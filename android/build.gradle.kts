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
        
        // Fix manifest by removing package attribute during build
        project.tasks.whenTaskAdded { task: org.gradle.api.Task ->
            if (task.name == "processReleaseManifest" || task.name == "processDebugManifest") {
                task.doFirst {
                    val manifestFile = file("${project.projectDir}/src/main/AndroidManifest.xml")
                    if (manifestFile.exists()) {
                        val manifestContent = manifestFile.readText()
                        val fixedContent = manifestContent.replace(
                            Regex("""package="[^"]*"""), 
                            ""
                        )
                        manifestFile.writeText(fixedContent)
                        project.logger.lifecycle("Fixed AndroidManifest.xml for android_package_manager")
                    }
                }
            }
        }
        
        project.afterEvaluate {
            if (project.hasProperty("android")) {
                try {
                    val android = project.extensions.getByName("android") as com.android.build.gradle.LibraryExtension
                    if (android.namespace == null) {
                        android.namespace = "com.android_package_manager"
                        project.logger.lifecycle("Set namespace for android_package_manager: ${android.namespace}")
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
