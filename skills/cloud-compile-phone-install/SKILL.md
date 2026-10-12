---
name: cloud-compile-phone-install
description: >-
  Autonomously offloads heavy Android Gradle builds and JVM compilation to GitHub Codespaces (16 GB RAM Azure VM),
  retrieves the generated APK with zero local memory consumption, and deploys it directly to a physical USB-connected
  phone via ADB. Trigger on /cloud-install, /build-phone, or whenever user asks to compile, build, test, or install the app
  on their mobile device.
---

# ☁️ CLOUD COMPILE & PHONE INSTALLER PROTOCOL (`cloud-compile-phone-install`)
### _(Zero-RAM Cloud Compilation × GitHub Codespaces 16GB × Local ADB Physical Phone Deployment)_

---

## 🎯 ARCHITECTURAL DIRECTIVE

Android Gradle builds spawn 5–6 parallel JVM background workers (Main Gradle Daemon, Kotlin Compiler Daemon, D8/R8 Dexer, AAPT2, Language Servers) that consume **2 GB to 4 GB+ of physical RAM on the local PC**, causing severe system lag and Task Manager bloat.

This skill **completely eliminates local build memory usage**:
1. Code editing and Git versioning remain **100% on the local PC**.
2. Compilation is offloaded to a **16 GB RAM, 4 vCPU GitHub Codespace (`shiny-umbrella-694jw54649v5354jv`)** running Java 17 and Android SDK 36.
3. The compiled `app-debug.apk` is pulled back to `./dist/app-debug.apk`.
4. The APK is automatically installed onto the user's USB-connected physical phone via `adb install -r`.
5. **Local RAM usage for compilation = 0 MB!**

---

## ⚡ WHEN TO ACTIVATE

Activate this skill whenever:
* The user says:
  * *"compile and install this app in my phone"*
  * *"run this application in my mobile"*
  * *"build the app and test on phone"*
  * *"deploy this to my device"*
* User executes `/cloud-install` or `/build-phone`.
* At the final verification/shipping stage of `/loop-feature` or `/build-product` when an APK needs to be delivered to a physical device.

---

## 🛠️ EXECUTION PROTOCOL

When triggered, the agent must execute the autonomous bridge script:

```powershell
powershell -ExecutionPolicy Bypass -File "scripts/cloud-build-install.ps1"
```

### Script Execution Parameters:
* **Default:** Builds on cloud, downloads APK to `./dist/app-debug.apk`, and auto-installs to phone if plugged in.
* **Stop Codespace after build (to save free quota):**
  ```powershell
  powershell -ExecutionPolicy Bypass -File "scripts/cloud-build-install.ps1" -StopCodespaceWhenDone
  ```
* **Build without installing to phone:**
  ```powershell
  powershell -ExecutionPolicy Bypass -File "scripts/cloud-build-install.ps1" -SkipInstall
  ```

---

## 📱 PHYSICAL PHONE REQUIREMENTS

1. Phone connected to PC via USB cable.
2. USB Debugging enabled in Android Developer Options.
3. Verified via:
   ```powershell
   adb devices
   ```
4. If no phone is attached when building, the APK remains safe in `./dist/app-debug.apk` and can be installed anytime the user plugs in the phone:
   ```powershell
   adb install -r dist/app-debug.apk
   ```

---

## 🔒 ZERO-FAIL INVARIANTS

1. **Never run `./gradlew assembleDebug` locally** unless the user explicitly requests local compilation. Always route to the cloud Codespace.
2. **Never commit build artifacts to Git:** All build outputs remain on the remote Codespace and in the local git-ignored `dist/` directory.
3. **CRLF Resilience:** The bridge script automatically sanitizes Windows CRLF line endings on the remote wrapper (`sed -i 's/\r$//' gradlew`).
4. **Persistent Cloud Caching:** The remote Codespace maintains the Gradle build cache and downloaded dependencies on its SSD, meaning subsequent incremental builds take only **15–30 seconds**.
