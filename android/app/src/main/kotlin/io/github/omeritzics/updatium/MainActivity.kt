package io.github.omeritzics.updatium

import android.app.admin.DevicePolicyManager
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.net.Uri
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.woheller69.freeDroidWarn.FreeDroidWarn

class MainActivity : FlutterActivity() {
    private val DEVICE_ADMIN_CHANNEL = "io.github.omeritzics.updatium/device_admin"
    private val SAF_CHANNEL = "io.github.omeritzics/updatium/saf"
    private val OPEN_DIRECTORY_TREE_REQUEST = 1001
    private lateinit var devicePolicyManager: DevicePolicyManager
    private lateinit var deviceAdminComponent: ComponentName
    private var safResult: MethodChannel.Result? = null

    override fun onCreate(savedInstanceState: android.os.Bundle?) {
        super.onCreate(savedInstanceState)
        FreeDroidWarn.showWarningOnUpgrade(this, BuildConfig.VERSION_CODE)
        devicePolicyManager = getSystemService(Context.DEVICE_POLICY_SERVICE) as DevicePolicyManager
        deviceAdminComponent = ComponentName(this, DeviceAdminReceiver::class.java)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == OPEN_DIRECTORY_TREE_REQUEST && resultCode == RESULT_OK) {
            val uri = data?.data
            if (uri != null && safResult != null) {
                contentResolver.takePersistableUriPermission(
                    uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                )
                safResult?.success(uri.toString())
                safResult = null
            } else if (safResult != null) {
                safResult?.success(null)
                safResult = null
            }
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        // Device admin channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, DEVICE_ADMIN_CHANNEL).setMethodCallHandler { call, result ->
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
                        devicePolicyManager.setUninstallBlocked(deviceAdminComponent, packageName, true)
                        result.success(true)
                    } else {
                        result.success(false)
                    }
                }
                "disableUninstallProtection" -> {
                    if (devicePolicyManager.isAdminActive(deviceAdminComponent)) {
                        devicePolicyManager.setUninstallBlocked(deviceAdminComponent, packageName, false)
                        result.success(true)
                    } else {
                        result.success(false)
                    }
                }
                else -> result.notImplemented()
            }
        }

        // SAF channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, SAF_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "openDirectoryTree" -> {
                    safResult = result
                    val intent = Intent(Intent.ACTION_OPEN_DOCUMENT_TREE)
                    startActivityForResult(intent, OPEN_DIRECTORY_TREE_REQUEST)
                }
                else -> result.notImplemented()
            }
        }
    }
}
