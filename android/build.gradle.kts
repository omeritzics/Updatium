allprojects {
    repositories {
        google()
        mavenCentral()
        maven { url = uri("https://jitpack.io") }
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    if (project.name == "flutter_archive") {
        apply(plugin = "org.jetbrains.kotlin.android")
    }
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    if (project.path != ":app") {
        project.evaluationDependsOn(":app")
    }

    // Disable lint for plugins that have Flight Recorder issues
    if (project.path == ":android_package_manager" || project.path == ":android_package_installer") {
        tasks.whenTaskAdded {
            if (name.contains("lint")) {
                enabled = false
            }
        }
    }

    val configureAndroid = {
        if (project.hasProperty("android")) {
            val android = project.extensions.getByName("android") as com.android.build.gradle.BaseExtension
            android.compileSdkVersion(36)
            
            // Fix namespace issue for packages that don't specify it
            if (android is com.android.build.gradle.LibraryExtension) {
                if (android.namespace == null) {
                    val manifestFile = file("${project.projectDir}/src/main/AndroidManifest.xml")
                    if (manifestFile.exists()) {
                        val manifestContent = manifestFile.readText()
                        val packageMatch = Regex("package=\"([^\"]+)\"").find(manifestContent)
                        if (packageMatch != null) {
                            android.namespace = packageMatch.groupValues[1]
                        }
                    }
                }
            }
        }
    }

    if (project.state.executed) {
        configureAndroid()
    } else {
        project.afterEvaluate {
            configureAndroid()
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
