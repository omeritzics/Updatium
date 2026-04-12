package io.github.omeritzics.updatium

import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "updatium/package_manager"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getInstalledApps" -> {
                    try {
                        val installedApps = getInstalledAppsList()
                        result.success(installedApps)
                    } catch (e: Exception) {
                        result.error("ERROR", "Failed to get installed apps", e.message)
                    }
                }
                "getAppInfo" -> {
                    try {
                        val packageName = call.argument<String>("packageName")
                        if (packageName != null) {
                            val appInfo = getAppInfo(packageName)
                            result.success(appInfo)
                        } else {
                            result.error("INVALID_ARGUMENT", "Package name is required", null)
                        }
                    } catch (e: Exception) {
                        result.error("ERROR", "Failed to get app info", e.message)
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    private fun getInstalledAppsList(): List<Map<String, String>> {
        val packageManager = packageManager
        val installedPackages = packageManager.getInstalledPackages(PackageManager.GET_META_DATA)
        val appsList = mutableListOf<Map<String, String>>()

        for (packageInfo in installedPackages) {
            try {
                val applicationInfo = packageInfo.applicationInfo
                // Only include user apps (not system apps) and apps that have a launch intent
                if (applicationInfo.flags and ApplicationInfo.FLAG_SYSTEM == 0 &&
                    packageManager.getLaunchIntentForPackage(packageInfo.packageName) != null) {
                    
                    val appMap = mapOf(
                        "appName" to packageManager.getApplicationLabel(applicationInfo).toString(),
                        "packageName" to packageInfo.packageName,
                        "version" to packageInfo.versionName ?: "",
                        "buildNumber" to if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                            packageInfo.longVersionCode.toString()
                        } else {
                            @Suppress("DEPRECATION")
                            packageInfo.versionCode.toString()
                        }
                    )
                    appsList.add(appMap)
                }
            } catch (e: Exception) {
                // Skip packages that can't be accessed
            }
        }

        return appsList
    }

    private fun getAppInfo(packageName: String): Map<String, String>? {
        return try {
            val packageManager = packageManager
            val packageInfo = packageManager.getPackageInfo(packageName, PackageManager.GET_META_DATA)
            val applicationInfo = packageInfo.applicationInfo ?: return null

            mapOf(
                "appName" to packageManager.getApplicationLabel(applicationInfo).toString(),
                "packageName" to packageInfo.packageName,
                "version" to packageInfo.versionName ?: "",
                "buildNumber" to if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                    packageInfo.longVersionCode.toString()
                } else {
                    @Suppress("DEPRECATION")
                    packageInfo.versionCode.toString()
                }
            )
        } catch (e: PackageManager.NameNotFoundException) {
            null
        }
    }
}
