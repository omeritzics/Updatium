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
    
    // Configure Android extensions for compatibility
    project.beforeEvaluate {
        if (project.hasProperty("android")) {
            try {
                val android = project.extensions.getByName("android") as com.android.build.gradle.BaseExtension
                android.compileSdkVersion(36)
            } catch (e: Exception) {
                println("Warning: Could not configure compileSdk for ${project.name}: ${e.message}")
            }
        }
    }
    
    // Fix namespace issue for android_package_manager specifically
    if (project.name == "android_package_manager") {
        project.afterEvaluate {
            if (project.hasProperty("android")) {
                try {
                    val android = project.extensions.getByName("android") as com.android.build.gradle.LibraryExtension
                    android.namespace = "com.android_package_manager"
                } catch (e: Exception) {
                    println("Warning: Could not configure namespace for android_package_manager: ${e.message}")
                }
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
