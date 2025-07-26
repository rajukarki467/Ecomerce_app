// Top-level build file
// build.gradle.kts

import org.gradle.api.tasks.Delete
import org.gradle.api.Project
import org.gradle.api.initialization.dsl.ScriptHandler

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
    project.evaluationDependsOn(":app")
}

// ✅ ADD this block inside your buildscript
buildscript {
    dependencies {
        classpath("com.google.gms:google-services:4.4.0") // Firebase plugin
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
