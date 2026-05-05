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
    
    // Skip problematic plugins that cause build failures
    if (project.name == "android_package_manager") {
        project.logger.lifecycle("Skipping special configuration for android_package_manager to avoid build issues")
        return@subprojects
    }
    
    // Configure Android extensions before evaluation to avoid timing issues
    project.beforeEvaluate {
        if (project.hasProperty("android")) {
            try {
                val android = project.extensions.getByName("android") as com.android.build.gradle.BaseExtension
                android.compileSdkVersion(36)
            } catch (e: Exception) {
                // Try with newer API
                try {
                    val android = project.extensions.getByName("android") as com.android.build.gradle.LibraryExtension
                    android.compileSdk = 36
                } catch (e2: Exception) {
                    println("Warning: Could not configure compileSdk for ${project.name}: ${e2.message}")
                }
            }
        }
    }
    
    // Only add afterEvaluate if project hasn't been evaluated yet
    if (!project.state.executed) {
        project.afterEvaluate {
            if (project.hasProperty("android")) {
                try {
                    // Fix namespace issue for packages that don't specify it
                    val android = project.extensions.getByName("android") as com.android.build.gradle.BaseExtension
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
                } catch (e: Exception) {
                    println("Warning: Could not configure namespace for ${project.name}: ${e.message}")
                }
            }
        }
    } else {
        // Project already evaluated, configure directly
        if (project.hasProperty("android")) {
            try {
                val android = project.extensions.getByName("android") as com.android.build.gradle.BaseExtension
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
            } catch (e: Exception) {
                println("Warning: Could not configure namespace for ${project.name}: ${e.message}")
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
