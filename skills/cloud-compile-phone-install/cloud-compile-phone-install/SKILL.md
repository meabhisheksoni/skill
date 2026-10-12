---
name: cloud-compile-phone-install
description: >-
  Autonomously offloads heavy Android Gradle builds and JVM compilation to GitHub Codespaces (16 GB RAM Azure VM),
  retrieves the generated APK with zero local memory consumption, and deploys it directly to a physical USB-connected
  phone via ADB. Features full autonomous self-healing: if the Codespace is deleted or expires, it automatically
  re-provisions a fresh 16GB cloud VM, bootstraps Java 17 & Android SDK 36, and completes the build with zero human intervention.
  Trigger on /cloud-install, /build-phone, or whenever user asks to compile, build, test, or install the app on their mobile device.
---

# ☁️ CLOUD COMPILE & PHONE INSTALLER PROTOCOL (`cloud-compile-phone-install`)
### _(Zero-RAM Cloud Compilation × Autonomous Self-Healing × Local ADB Physical Phone Deployment)_

---

## 🎯 ARCHITECTURAL DIRECTIVE: "CATTLE, NOT PETS"

Conventional remote builds fail when cloud VMs expire, hit retention limits, or are auto-deleted by cloud providers.

This skill is designed around **Disposable Infrastructure & Self-Healing Automation**:
1. **Source of Truth is 100% Local:** All project code resides permanently on your local SSD (`F:\EMPIRE D DRIVE\...`). The cloud machine holds **zero unique data**. If the Codespace is destroyed, you lose **0 bytes of work**.
2. **Autonomous Self-Healing:** If GitHub deletes the Codespace (after 30 days of inactivity) or if the VM is lost, the script **automatically provisions a brand-new 16 GB RAM Codespace**, configures maximum 30-day retention (`--retention-period 720h`), and bootstraps Java 17 and Android SDK 36 in 45 seconds—**without asking for manual setup**.
3. **Zero Local RAM Overhead:** All 5–6 parallel JVM workers (Kotlin compiler, Gradle daemon, D8/R8 dexer, AAPT2) run exclusively on Azure's 16 GB RAM cloud. Local Task Manager remains completely clear of `java.exe` memory bloat.
4. **Physical USB Phone Deployment:** The compiled APK (`126 MB`) is automatically downloaded to `./dist/app-debug.apk` and pushed directly to the USB-connected phone via `adb install -r`, immediately launching the app.

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

When triggered, the agent executes the self-healing bridge script:

```powershell
powershell -ExecutionPolicy Bypass -File "scripts/cloud-build-install.ps1"
```

### Script Execution Parameters:
* **Standard Build & Auto-Deploy:**
  ```powershell
  powershell -ExecutionPolicy Bypass -File "scripts/cloud-build-install.ps1"
  ```
* **Force Re-create Fresh Codespace:**
  ```powershell
  powershell -ExecutionPolicy Bypass -File "scripts/cloud-build-install.ps1" -ForceRecreate
  ```
* **Auto-Sleep after build (preserve free monthly hours):**
  ```powershell
  powershell -ExecutionPolicy Bypass -File "scripts/cloud-build-install.ps1" -StopCodespaceWhenDone
  ```
* **Build without installing to phone:**
  ```powershell
  powershell -ExecutionPolicy Bypass -File "scripts/cloud-build-install.ps1" -SkipInstall
  ```

---

## 🛡️ SELF-HEALING RECOVERY MATRIX

| Condition Detected | Autonomous Agent Action |
| :--- | :--- |
| **Codespace is Sleeping / Shutdown** | `gh codespace ssh` auto-wakes the machine in 10 seconds. |
| **Codespace was Auto-Deleted by GitHub** | Automatically provisions a new 16 GB RAM Codespace (`abhishek20nn/exp`) with 30-day retention. |
| **Android SDK / Java Missing in new VM** | Automatically runs headless 45-second bootstrap (Java 17 + Android SDK 36 + licenses). |
| **Windows CRLF line endings on Linux** | Automatically sanitizes wrappers using `sed -i 's/\r$//' gradlew`. |
| **No Phone Connected via USB** | Safely downloads APK to `dist/app-debug.apk` and notifies user to plug in whenever ready. |
| **Phone Connected via USB** | Automatically runs `adb install -r dist/app-debug.apk` and launches `com.example.monday`. |
