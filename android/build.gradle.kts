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
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    if (project.path != ":app") {
        project.evaluationDependsOn(":app")
    }
    
        
    val configureAndroid = {
        if (project.hasProperty("android")) {
            // AGP 9+ compatible approach - use new API when available
            try {
                val android = project.extensions.getByName("android") as com.android.build.gradle.LibraryExtension
                android.compileSdk = 36
                
                // Fix namespace issue for packages that don't specify it
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
            } catch (e: Exception) {
                // Fallback for older AGP versions
                try {
                    val android = project.extensions.getByName("android") as com.android.build.gradle.BaseExtension
                    android.compileSdkVersion(36)
                    
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
                } catch (fallbackException: Exception) {
                    // Log but don't fail the build
                    println("Warning: Could not configure Android extension: ${fallbackException.message}")
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
