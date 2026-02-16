import java.io.FileInputStream
import java.util.Properties
import com.android.build.gradle.internal.api.ApkVariantOutputImpl

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val localProperties = Properties()
val localPropertiesFile = rootProject.file("local.properties")
if (localPropertiesFile.exists()) {
    localPropertiesFile.reader(Charsets.UTF_8).use { reader ->
        localProperties.load(reader)
    }
}

var flutterVersionCode = localProperties.getProperty("flutter.versionCode") ?: "1"
var flutterVersionName = localProperties.getProperty("flutter.versionName") ?: "1.0"

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
val keystorePropertiesExists = keystorePropertiesFile.exists()
if (keystorePropertiesExists) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

android {
    namespace = "com.omeritzics.updatium"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "28.2.13676358"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlin {
        jvmToolchain(17)
    }

    defaultConfig {
        applicationId = "com.omeritzics.updatium"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 24
        targetSdk = flutter.targetSdkVersion
        versionCode = flutterVersionCode.toInt()
        versionName = flutterVersionName
        
        // Enable split APKs for different ABIs
        ndk {
            abiFilters += listOf("armeabi-v7a", "arm64-v8a", "x86_64")
        }
    }

    flavorDimensions += "default"

    productFlavors {
        create("normal") {
            dimension = "default"
            applicationIdSuffix = ""
        }
        create("fdroid") {
            dimension = "default"
            applicationIdSuffix = ".fdroid"
        }
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String?
            keyPassword = keystoreProperties["keyPassword"] as String?
            storeFile = keystoreProperties["storeFile"]?.let { file(it) }
            storePassword = keystoreProperties["storePassword"] as String?
        }
    }

    buildTypes {
        getByName("release") {
            val releaseSigningConfig = signingConfigs.getByName("release")
            signingConfig = if (keystorePropertiesExists && releaseSigningConfig.storeFile != null) {
                releaseSigningConfig
            } else {
                if (gradle.startParameter.taskNames.any { it.contains("release", ignoreCase = true) }) {
                    logger.error(
                        """
                            WARNING: You are trying to create a release build, but a key.properties file was not found.
                                     You will need to sign the APKs separately.

                            To sign a release build automatically, a keystore properties file is required.

                            The following is an example configuration.
                            Create a file named [project]/android/key.properties that contains a reference to your keystore.
                            Don't include the angle brackets (< >). They indicate that the text serves as a placeholder for your values.

                            storePassword=<keystore password>
                            keyPassword=<key password>
                            keyAlias=<key alias>
                            storeFile=<keystore file location>

                            For more info, see:
                            * https://docs.flutter.dev/deployment/android#sign-the-app
                        """.trimIndent()
                    )
                }
                null
            }
        }
        getByName("debug") {
            applicationIdSuffix = ".debug"
            versionNameSuffix = "-debug"
        }
    }
    
    // Configure split APK generation
    splits {
        abi {
            isEnable = true
            reset()
            include("armeabi-v7a", "arm64-v8a", "x86_64")
            isUniversalApk = true
        }
    }
}

val abiCodes = mapOf("x86_64" to 1, "armeabi-v7a" to 2, "arm64-v8a" to 3)
androidComponents {
    onVariants { variant ->
        variant.outputs.forEach { output ->
            // Extract ABI from output file name instead of using filters
            val abiName = when {
                (output as ApkVariantOutputImpl).outputFile.name.contains("arm64-v8a") -> "arm64-v8a"
                (output as ApkVariantOutputImpl).outputFile.name.contains("armeabi-v7a") -> "armeabi-v7a"
                (output as ApkVariantOutputImpl).outputFile.name.contains("x86_64") -> "x86_64"
                else -> null
            }
            val abiVersionCode = abiName?.let { abiCodes[it] }

            if (abiVersionCode != null) {
                // Create a version code within Android limits (max 2100000000)
                // Use: (YYMMDDHH % 100000) * 100 + ABI to stay well under limits
                val baseBuildNumber = requireNotNull(flutterVersionCode.toLongOrNull()) {
                    "Invalid flutter.versionCode='$flutterVersionCode' in local.properties; must be a number."
                }
                val compressedCode = (baseBuildNumber % 100000) * 100 + abiVersionCode
                val maxPlayVersionCode = 2_100_000_000L
                val safeVersionCode = compressedCode.coerceIn(1L, maxPlayVersionCode)
                (output as ApkVariantOutputImpl).versionCode.set(safeVersionCode.toInt())
            }
        }
    }
}


dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")
}

flutter {
    source = "../.."
}
