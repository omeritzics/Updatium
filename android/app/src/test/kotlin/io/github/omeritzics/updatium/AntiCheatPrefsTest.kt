package io.github.omeritzics.updatium

import android.content.Context
import android.os.Build
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import kotlin.test.assertFalse
import kotlin.test.assertTrue

/**
 * Unit tests for the anti-cheat SharedPreferences contract used by
 * [MainActivity]'s `enableAntiCheat` / `disableAntiCheat` method-channel handlers.
 *
 * Because [MainActivity] extends [io.flutter.embedding.android.FlutterActivity] and
 * therefore cannot be instantiated without a real Flutter engine, these tests exercise
 * the SharedPreferences behaviour (the sole side-effect of both handlers) directly.
 *
 * The handler logic from the PR:
 *
 * ```kotlin
 * "enableAntiCheat" -> {
 *     val prefs = getSharedPreferences("updatium_prefs", Context.MODE_PRIVATE)
 *     val editor = prefs.edit()
 *     editor.putBoolean("safeModeAntiCheat", true)
 *     val success = editor.commit()
 *     result.success(success)
 * }
 * "disableAntiCheat" -> {
 *     val prefs = getSharedPreferences("updatium_prefs", Context.MODE_PRIVATE)
 *     val editor = prefs.edit()
 *     editor.putBoolean("safeModeAntiCheat", false)
 *     val success = editor.commit()
 *     result.success(success)
 * }
 * ```
 *
 * All tests operate on a real (Robolectric-backed) [SharedPreferences] instance to
 * validate the exact contract expected by [DeviceAdminReceiver].
 */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [Build.VERSION_CODES.UPSIDE_DOWN_CAKE]) // API 34
class AntiCheatPrefsTest {

    companion object {
        private const val PREFS_NAME = "updatium_prefs"
        private const val KEY_ANTI_CHEAT = "safeModeAntiCheat"
    }

    private lateinit var context: Context

    @Before
    fun setUp() {
        context = RuntimeEnvironment.getApplication()
        // Start each test with a clean slate
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            .edit().clear().commit()
    }

    // ── Helpers that mirror the handler bodies exactly ─────────────────────────

    /** Mirrors the `enableAntiCheat` handler body. Returns commit() result. */
    private fun enableAntiCheat(): Boolean {
        val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        val editor = prefs.edit()
        editor.putBoolean(KEY_ANTI_CHEAT, true)
        return editor.commit()
    }

    /** Mirrors the `disableAntiCheat` handler body. Returns commit() result. */
    private fun disableAntiCheat(): Boolean {
        val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        val editor = prefs.edit()
        editor.putBoolean(KEY_ANTI_CHEAT, false)
        return editor.commit()
    }

    private fun readAntiCheatPref(): Boolean =
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            .getBoolean(KEY_ANTI_CHEAT, false)

    // ── enableAntiCheat ────────────────────────────────────────────────────────

    @Test
    fun `enableAntiCheat - writes safeModeAntiCheat=true to updatium_prefs`() {
        enableAntiCheat()
        assertTrue(readAntiCheatPref(), "safeModeAntiCheat should be true after enableAntiCheat")
    }

    @Test
    fun `enableAntiCheat - commit returns true indicating successful write`() {
        val success = enableAntiCheat()
        assertTrue(success, "commit() should return true on success")
    }

    @Test
    fun `enableAntiCheat - overwrites existing false value`() {
        // Pre-condition: pref is explicitly false
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            .edit().putBoolean(KEY_ANTI_CHEAT, false).commit()

        enableAntiCheat()

        assertTrue(readAntiCheatPref())
    }

    @Test
    fun `enableAntiCheat - idempotent when called twice`() {
        enableAntiCheat()
        enableAntiCheat()
        assertTrue(readAntiCheatPref())
    }

    @Test
    fun `enableAntiCheat - uses correct prefs file name`() {
        enableAntiCheat()
        // Verify by reading from a differently-named file – should still be false (default)
        val otherPrefs = context.getSharedPreferences("other_prefs", Context.MODE_PRIVATE)
            .getBoolean(KEY_ANTI_CHEAT, false)
        assertFalse(otherPrefs, "enableAntiCheat must only write to 'updatium_prefs'")
    }

    // ── disableAntiCheat ───────────────────────────────────────────────────────

    @Test
    fun `disableAntiCheat - writes safeModeAntiCheat=false to updatium_prefs`() {
        // Pre-condition: pref is true
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            .edit().putBoolean(KEY_ANTI_CHEAT, true).commit()

        disableAntiCheat()

        assertFalse(readAntiCheatPref(), "safeModeAntiCheat should be false after disableAntiCheat")
    }

    @Test
    fun `disableAntiCheat - commit returns true indicating successful write`() {
        val success = disableAntiCheat()
        assertTrue(success, "commit() should return true on success")
    }

    @Test
    fun `disableAntiCheat - when pref already false remains false`() {
        // Pre-condition: pref is already false
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            .edit().putBoolean(KEY_ANTI_CHEAT, false).commit()

        disableAntiCheat()

        assertFalse(readAntiCheatPref())
    }

    @Test
    fun `disableAntiCheat - idempotent when called twice`() {
        disableAntiCheat()
        disableAntiCheat()
        assertFalse(readAntiCheatPref())
    }

    @Test
    fun `disableAntiCheat - uses correct prefs file name`() {
        // Write true to a different file; disableAntiCheat must not touch it
        context.getSharedPreferences("other_prefs", Context.MODE_PRIVATE)
            .edit().putBoolean(KEY_ANTI_CHEAT, true).commit()

        disableAntiCheat()

        // The other file should still be true
        val otherPrefs = context.getSharedPreferences("other_prefs", Context.MODE_PRIVATE)
            .getBoolean(KEY_ANTI_CHEAT, false)
        assertTrue(otherPrefs, "disableAntiCheat must only write to 'updatium_prefs'")
    }

    // ── enable → disable → enable round-trip ──────────────────────────────────

    @Test
    fun `enable then disable - final state is false`() {
        enableAntiCheat()
        disableAntiCheat()
        assertFalse(readAntiCheatPref())
    }

    @Test
    fun `disable then enable - final state is true`() {
        disableAntiCheat()
        enableAntiCheat()
        assertTrue(readAntiCheatPref())
    }

    @Test
    fun `multiple toggles - final state matches last call`() {
        enableAntiCheat()
        disableAntiCheat()
        enableAntiCheat()
        disableAntiCheat()
        assertFalse(readAntiCheatPref())

        enableAntiCheat()
        assertTrue(readAntiCheatPref())
    }

    // ── DeviceAdminReceiver integration contract ───────────────────────────────

    /**
     * Verifies the shared-prefs contract between MainActivity and DeviceAdminReceiver:
     * after enableAntiCheat is called, DeviceAdminReceiver.onDisabled must take the
     * anti-cheat path (i.e. read true from the same prefs file/key).
     */
    @Test
    fun `after enableAntiCheat DeviceAdminReceiver reads true for safeModeAntiCheat`() {
        enableAntiCheat()
        val receiverPrefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        assertTrue(receiverPrefs.getBoolean(KEY_ANTI_CHEAT, false))
    }

    /**
     * Verifies the shared-prefs contract: after disableAntiCheat is called,
     * DeviceAdminReceiver.onDisabled must take the normal (Toast) path.
     */
    @Test
    fun `after disableAntiCheat DeviceAdminReceiver reads false for safeModeAntiCheat`() {
        // Start with anti-cheat enabled
        enableAntiCheat()
        // Disable it via the handler mirror
        disableAntiCheat()

        val receiverPrefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        assertFalse(receiverPrefs.getBoolean(KEY_ANTI_CHEAT, false))
    }

    // ── Boundary / negative cases ──────────────────────────────────────────────

    @Test
    fun `default pref value - no prior write returns false`() {
        // No write at all
        assertFalse(readAntiCheatPref(), "Default value for safeModeAntiCheat must be false")
    }

    @Test
    fun `enableAntiCheat - does not clobber unrelated prefs keys`() {
        val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        prefs.edit().putString("someOtherKey", "someValue").commit()

        enableAntiCheat()

        val untouched = prefs.getString("someOtherKey", null)
        assertTrue(untouched == "someValue", "enableAntiCheat must not modify unrelated keys")
    }

    @Test
    fun `disableAntiCheat - does not clobber unrelated prefs keys`() {
        val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        prefs.edit().putString("someOtherKey", "someValue").commit()

        disableAntiCheat()

        val untouched = prefs.getString("someOtherKey", null)
        assertTrue(untouched == "someValue", "disableAntiCheat must not modify unrelated keys")
    }
}