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
    
    // Fix for android_package_manager plugin namespace issue with AGP 8+
    if (project.name == "android_package_manager") {
        project.afterEvaluate {
            if (project.hasProperty("android")) {
                val androidExtension = project.extensions.findByName("android")
                if (androidExtension is com.android.build.gradle.LibraryExtension) {
                    if (androidExtension.namespace == null) {
                        androidExtension.namespace = "com.android_package_manager"
                    }
                }
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
