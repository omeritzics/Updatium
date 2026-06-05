package io.github.omeritzics.updatium

import android.app.admin.DeviceAdminReceiver
import android.content.Context
import android.content.Intent
import android.widget.Toast
import android.app.ActivityManager
import android.os.Build

class DeviceAdminReceiver : DeviceAdminReceiver() {
    override fun onEnabled(context: Context, intent: Intent) {
        super.onEnabled(context, intent)
        Toast.makeText(context, "Device admin enabled", Toast.LENGTH_SHORT).show()
    }

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
    
    private fun forceStopSettingsApp(context: Context) {
        try {
            val activityManager = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
            val packageName = "com.android.settings"
            // Note: killBackgroundProcesses only kills background processes and requires 
            // android.permission.KILL_BACKGROUND_PROCESSES. It won't stop Settings if it's in the foreground.
            activityManager.killBackgroundProcesses(packageName)
        } catch (e: Exception) {
            // Log error but don't crash
            e.printStackTrace()
        }
    }
    
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
