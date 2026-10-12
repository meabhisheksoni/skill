---
name: zero-server-drive-sync
description: Expert forensic playbook for implementing, diagnosing, and hardening Zero-Server Google Drive Delta Sync (Room SQLite + Streaming ZIP + Google Drive drive.appdata) on Android. Covers OAuth consent bypass, Public Suffix List rules, Search Console dual verification, Room schema index migrations, and real-time ADB Logcat 403 diagnostics.
---

# Zero-Server Google Drive Sync Skill & Diagnostic Playbook

Use this skill whenever:
1. Implementing or debugging Google Drive cloud sync in an offline-first Android app.
2. Handling Google Cloud OAuth consent screens, branding verification, or 100-user testing caps.
3. Hosting legal/privacy policies on GitHub Pages without paying for GitHub Pro.
4. Diagnosing silent HTTP 403/401/400 errors during Google Drive sync using live ADB logcat forensics.

---

## 1. Golden Architecture Rules (Zero-Server Invariants)

1. **Private Scope Only (`drive.appdata`):**
   - Use `https://www.googleapis.com/auth/drive.appdata` (`DriveScopes.DRIVE_APPDATA`).
   - Never request full Drive access (`DriveScopes.DRIVE`).
   - Benefit: Zero manual review by Google, zero cost (₹0), permanently unlimited users once in production.

2. **Decoupled Privacy Repo:**
   - Never make private Android source repositories public just for GitHub Pages.
   - Create a dedicated public repo (e.g. `kharchaji-privacy`) strictly for `index.html`, `privacy.html`, `terms.html`, and Google verification tokens.

3. **Public Suffix List (PSL) Rule:**
   - In Google Cloud Console Authorised Domains, bare `github.io` will always be rejected.
   - Always enter `<username>.github.io`.

4. **Never Upload an App Logo in Google Cloud Console:**
   - Uploading a logo triggers mandatory manual human review by Google Trust & Safety, locking OAuth for weeks.
   - Leave the App Logo input empty to enable instant production publishing.

---

## 2. Forensic Diagnostic Order (When Sync Fails)

Never guess or look at Cloud Logging history. Follow this 3-step sequence:

### Step 1: Read Live Device Logcat
```powershell
adb logcat -d -s "SyncRepository" "DriveSyncWorker" "SettingsViewModel" "*:E"
```
Look for `GoogleJsonResponseException`:
- `SERVICE_DISABLED` / `accessNotConfigured`: Google Drive API switch is OFF. Enable at `https://console.cloud.google.com/apis/library/drive.googleapis.com?project=<PROJECT_ID>`.
- `401 Unauthorized`: Token expired or revoked. Trigger `UserRecoverableAuthIOException` intent.
- `403 rateLimitExceeded`: Backoff and retry with exponential delay.

### Step 2: Room SQLite Schema Verification
If app crashes on startup with `IllegalStateException: Migration didn't properly handle: ...`:
- Compare entity `@Entity(indices = [...])` with generated `AppDatabase_Impl.java`.
- Check for composite indices (e.g., `(timestamp, isDone)` vs single indices).
- Never use destructive migration for financial ledgers.

### Step 3: Google Drive Web AppData Vault Verification
To prove to users that data exists on Google Drive:
1. Open `drive.google.com` -> Settings ⚙️ -> Settings.
2. Select **Manage Apps**.
3. Locate app name -> Inspect **Hidden app data: [X] KB/MB**.
