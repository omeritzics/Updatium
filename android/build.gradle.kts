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
    
    // Special handling for android_package_manager plugin for AGP 9 compatibility
    if (project.name == "android_package_manager") {
        project.logger.lifecycle("Configuring android_package_manager for AGP 9 compatibility")
        
        // Fix manifest package issue by suppressing incorrect package validation
        project.afterEvaluate {
            if (project.hasProperty("android")) {
                try {
                    val android = project.extensions.getByName("android") as com.android.build.gradle.LibraryExtension
                    if (android.namespace == null) {
                        android.namespace = "com.android_package_manager"
                        project.logger.lifecycle("Set namespace for android_package_manager: ${android.namespace}")
                    }
                    // Suppress package validation errors for this plugin
                    android.compileOptions {
                        sourceCompatibility = JavaVersion.VERSION_1_8
                        targetCompatibility = JavaVersion.VERSION_1_8
                    }
                } catch (e: Exception) {
                    println("Warning: Could not configure namespace for android_package_manager: ${e.message}")
                }
            }
        }
        
        return@subprojects
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
