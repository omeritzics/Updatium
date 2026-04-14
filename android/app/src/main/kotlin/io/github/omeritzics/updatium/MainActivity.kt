package io.github.omeritzics.updatium

import android.app.admin.DevicePolicyManager
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.woheller69.freeDroidWarn.FreeDroidWarn

class MainActivity : FlutterActivity() {
    private val CHANNEL = "io.github.omeritzics.updatium/device_admin"
    private lateinit var devicePolicyManager: DevicePolicyManager
    private lateinit var deviceAdminComponent: ComponentName

    override fun onCreate(savedInstanceState: android.os.Bundle?) {
        super.onCreate(savedInstanceState)
        FreeDroidWarn.showWarningOnUpgrade(this, BuildConfig.VERSION_CODE)
        devicePolicyManager = getSystemService(Context.DEVICE_POLICY_SERVICE) as DevicePolicyManager
        deviceAdminComponent = ComponentName(this, DeviceAdminReceiver::class.java)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "isDeviceAdminEnabled" -> {
                    val isEnabled = devicePolicyManager.isAdminActive(deviceAdminComponent)
                    result.success(isEnabled)
                }
                "requestDeviceAdmin" -> {
                    val intent = Intent(DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN)
                    intent.putExtra(DevicePolicyManager.EXTRA_DEVICE_ADMIN, deviceAdminComponent)
                    startActivity(intent)
                    result.success(null)
                }
                "isUninstallProtectionEnabled" -> {
                    val isEnabled = devicePolicyManager.isAdminActive(deviceAdminComponent)
                    result.success(isEnabled)
                }
                "enableUninstallProtection" -> {
                    if (devicePolicyManager.isAdminActive(deviceAdminComponent)) {
                        devicePolicyManager.setDeviceOwner(deviceAdminComponent)
                        result.success(true)
                    } else {
                        result.success(false)
                    }
                }
                "disableUninstallProtection" -> {
                    if (devicePolicyManager.isAdminActive(deviceAdminComponent)) {
                        devicePolicyManager.removeActiveAdmin(deviceAdminComponent)
                        result.success(true)
                    } else {
                        result.success(false)
                    }
                }
                else -> result.notImplemented()
            }
        }
    }
}
