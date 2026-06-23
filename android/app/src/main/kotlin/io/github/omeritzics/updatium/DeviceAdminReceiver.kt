package io.github.omeritzics.updatium

import android.app.admin.DeviceAdminReceiver
import android.content.Context
import android.content.Intent
import android.widget.Toast
import android.app.ActivityManager
import android.os.Build

class DeviceAdminReceiver : DeviceAdminReceiver() {
    /**
     * Shows feedback when device admin is enabled.
     */
    override fun onEnabled(context: Context, intent: Intent) {
        super.onEnabled(context, intent)
        Toast.makeText(context, "Device admin enabled", Toast.LENGTH_SHORT).show()
    }

    /**
     * Handles device-admin disable events.
     *
     * When the anti-cheat preference is enabled, stops the Settings app and attempts to restore device-admin activation.
     */
    override fun onDisabled(context: Context, intent: Intent) {
        super.onDisabled(context, intent)
        
        // Check if anti-cheat is enabled
        val prefs = context.getSharedPreferences("updatium_prefs", Context.MODE_PRIVATE)
        val antiCheatEnabled = prefs.getBoolean("safeModeAntiCheat", false)
        
        if (antiCheatEnabled) {
            // Force-stop the Settings app
            forceStopSettingsApp(context)
            // Re-enable device admin
            reEnableDeviceAdmin(context)
        } else {
            Toast.makeText(context, "Device admin disabled", Toast.LENGTH_SHORT).show()
        }
    }
    
    /**
     * Attempts to stop the Settings app process.
     *
     * @param context The context used to access system services.
     */
    private fun forceStopSettingsApp(context: Context) {
        try {
            val activityManager = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
            val packageName = "com.android.settings"
            
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                activityManager.appTasks.forEach { task ->
                    if (task.taskInfo.baseActivity?.packageName == packageName) {
                        activityManager.killBackgroundProcesses(packageName)
                    }
                }
            } else {
                @Suppress("DEPRECATION")
                activityManager.killBackgroundProcesses(packageName)
            }
        } catch (e: SecurityException) {
            // Log error but don't crash
            e.printStackTrace()
        }
    }
    
    /**
     * Reopens the device administrator activation flow when the admin is inactive.
     *
     * Starts the device admin add intent for this receiver if it is not currently active.
     */
    private fun reEnableDeviceAdmin(context: Context) {
        try {
            val devicePolicyManager = context.getSystemService(Context.DEVICE_POLICY_SERVICE) as android.app.admin.DevicePolicyManager
            val deviceAdminComponent = android.content.ComponentName(context, DeviceAdminReceiver::class.java)
            
            if (!devicePolicyManager.isAdminActive(deviceAdminComponent)) {
                val intent = Intent(android.app.admin.DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN)
                intent.putExtra(android.app.admin.DevicePolicyManager.EXTRA_DEVICE_ADMIN, deviceAdminComponent)
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                context.startActivity(intent)
            }
        } catch (e: Exception) {
            // Log error but don't crash
            e.printStackTrace()
        }
    }
}
