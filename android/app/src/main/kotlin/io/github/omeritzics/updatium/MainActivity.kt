package io.github.omeritzics.updatium

import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import org.woheller69.freeDroidWarn.FreeDroidWarn

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: android.os.Bundle?) {
        super.onCreate(savedInstanceState)
        FreeDroidWarn.showWarningOnUpgrade(this, BuildConfig.VERSION_CODE)
    }
}
