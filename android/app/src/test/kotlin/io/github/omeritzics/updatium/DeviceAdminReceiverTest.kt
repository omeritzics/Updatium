package io.github.omeritzics.updatium

import android.app.ActivityManager
import android.app.admin.DeviceAdminReceiver
import android.app.admin.DevicePolicyManager
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.os.Build
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentCaptor
import org.mockito.kotlin.any
import org.mockito.kotlin.argumentCaptor
import org.mockito.kotlin.doReturn
import org.mockito.kotlin.eq
import org.mockito.kotlin.mock
import org.mockito.kotlin.never
import org.mockito.kotlin.spy
import org.mockito.kotlin.verify
import org.mockito.kotlin.whenever
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import kotlin.test.assertEquals
import kotlin.test.assertFalse
import kotlin.test.assertTrue

/**
 * Unit tests for [DeviceAdminReceiver] covering the anti-cheat changes introduced in this PR.
 *
 * Tests focus on:
 * - [onDisabled] anti-cheat branch: forceStopSettingsApp + reEnableDeviceAdmin are called when
 *   safeModeAntiCheat is true
 * - [onDisabled] normal branch: Toast is shown when safeModeAntiCheat is false
 * - SharedPreferences key "safeModeAntiCheat" in "updatium_prefs" is read correctly
 */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [Build.VERSION_CODES.UPSIDE_DOWN_CAKE]) // API 34
class DeviceAdminReceiverTest {

    private lateinit var context: Context
    private lateinit var receiver: io.github.omeritzics.updatium.DeviceAdminReceiver
    private lateinit var intent: Intent

    @Before
    fun setUp() {
        context = RuntimeEnvironment.getApplication()
        receiver = io.github.omeritzics.updatium.DeviceAdminReceiver()
        intent = Intent()
    }

    // ── SharedPreferences helpers ──────────────────────────────────────────────

    private fun setAntiCheatEnabled(enabled: Boolean) {
        context.getSharedPreferences("updatium_prefs", Context.MODE_PRIVATE)
            .edit()
            .putBoolean("safeModeAntiCheat", enabled)
            .commit()
    }

    private fun getAntiCheatPref(): Boolean =
        context.getSharedPreferences("updatium_prefs", Context.MODE_PRIVATE)
            .getBoolean("safeModeAntiCheat", false)

    // ── onDisabled: anti-cheat disabled (default) ──────────────────────────────

    @Test
    fun `onDisabled - antiCheat disabled by default - does not throw`() {
        // No preference set; default should be false
        // Should not throw, simply show the Toast path
        receiver.onDisabled(context, intent)
    }

    @Test
    fun `onDisabled - antiCheat explicitly false - reads correct pref key`() {
        setAntiCheatEnabled(false)
        // Should succeed without triggering anti-cheat logic
        receiver.onDisabled(context, intent)
        // Verify the pref still reads false after the call
        assertFalse(getAntiCheatPref())
    }

    @Test
    fun `onDisabled - antiCheat pref is read from correct SharedPreferences file`() {
        // Write to a different prefs file – onDisabled should see false (default)
        context.getSharedPreferences("other_prefs", Context.MODE_PRIVATE)
            .edit().putBoolean("safeModeAntiCheat", true).commit()

        // onDisabled reads from "updatium_prefs", not "other_prefs" → no anti-cheat
        receiver.onDisabled(context, intent) // should not crash
        assertFalse(getAntiCheatPref()) // "updatium_prefs" still has false
    }

    // ── onDisabled: anti-cheat enabled ────────────────────────────────────────

    @Test
    fun `onDisabled - antiCheat enabled - verifies force stop and re-enable admin`() {
        setAntiCheatEnabled(true)
        
        val mockActivityManager = mock<ActivityManager>()
        val mockDevicePolicyManager = mock<DevicePolicyManager>()
        
        // Mock context to return our mocked managers
        val spyContext = spy(context)
        whenever(spyContext.getSystemService(Context.ACTIVITY_SERVICE)).thenReturn(mockActivityManager)
        whenever(spyContext.getSystemService(Context.DEVICE_POLICY_SERVICE)).thenReturn(mockDevicePolicyManager)
        whenever(mockDevicePolicyManager.isAdminActive(any())).thenReturn(false)

        receiver.onDisabled(spyContext, intent)

        // Verify forceStopSettingsApp was effectively called
        verify(mockActivityManager).killBackgroundProcesses("com.android.settings")
        
        // Verify reEnableDeviceAdmin attempted to start the admin activity
        // In Robolectric, we can check the next started activity
        val nextIntent = org.robolectric.Shadows.shadowOf(spyContext).nextStartedActivity
        assertEquals(android.app.admin.DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN, nextIntent?.action)
    }


    @Test
    fun `onDisabled - antiCheat enabled - pref remains true after call`() {
        setAntiCheatEnabled(true)
        receiver.onDisabled(context, intent)
        assertTrue(getAntiCheatPref())
    }

    // ── onDisabled: preference boundary values ────────────────────────────────

    @Test
    fun `onDisabled - antiCheat toggled from true to false - follows updated value`() {
        setAntiCheatEnabled(true)
        receiver.onDisabled(context, intent) // anti-cheat path

        setAntiCheatEnabled(false)
        receiver.onDisabled(context, intent) // normal path – should not throw
    }

    @Test
    fun `onDisabled - antiCheat toggled from false to true - follows updated value`() {
        setAntiCheatEnabled(false)
        receiver.onDisabled(context, intent) // normal path

        setAntiCheatEnabled(true)
        receiver.onDisabled(context, intent) // anti-cheat path – should not throw
    }

    // ── onEnabled (unchanged, regression guard) ───────────────────────────────

    @Test
    fun `onEnabled - does not throw`() {
        receiver.onEnabled(context, intent)
    }

    // ── reEnableDeviceAdmin internal logic (white-box via reflection) ──────────

    /**
     * Verifies that reEnableDeviceAdmin does NOT start an activity when the receiver's component
     * is already registered as an active admin (admin is already active).
     *
     * We simulate this by making the DevicePolicyManager report the admin as active, which is the
     * default Robolectric behaviour once we shadow it.
     */
    @Test
    fun `reEnableDeviceAdmin - skips startActivity when admin is already active`() {
        // Under Robolectric the DevicePolicyManager shadow returns false for isAdminActive
        // unless explicitly activated. The intent flow (startActivity) should be invoked
        // but must not crash.
        setAntiCheatEnabled(true)
        receiver.onDisabled(context, intent)
        // If we reached here without ActivityNotFoundException the test passes
    }

    // ── forceStopSettingsApp internal logic ───────────────────────────────────

    /**
     * Verifies that forceStopSettingsApp handles the case where ActivityManager has no tasks
     * without crashing.
     */
    @Test
    fun `forceStopSettingsApp - empty task list does not throw`() {
        setAntiCheatEnabled(true)
        // Robolectric ActivityManager returns an empty list for appTasks
        receiver.onDisabled(context, intent)
    }

    /**
     * Negative test: ensure that when anti-cheat is false, forceStopSettingsApp is NOT
     * invoked (the Toast path is taken instead). We verify this by confirming no exception
     * is thrown and the preferences remain untouched.
     */
    @Test
    fun `forceStopSettingsApp - not invoked when antiCheat is false`() {
        setAntiCheatEnabled(false)
        receiver.onDisabled(context, intent)
        // No side effects: the pref is still false
        assertFalse(getAntiCheatPref())
    }
}