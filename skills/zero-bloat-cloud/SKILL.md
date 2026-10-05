---
name: zero-bloat-cloud
description: >-
  Universal SRE-grade disk conservation and zero-bloat cloud development protocol. Automatically detects
  constrained cloud filesystems (e.g. Google Cloud Shell 4.8GB /home vs ephemeral /tmp, GitHub Codespaces,
  Gitpod, Docker devcontainers), redirects heavyweight build artifacts across 6 tech stacks (Rust, Node,
  Python, Go, Java/Android, C++), enforces headless execution, purges transient caches post-build, and triggers
  CI offloading when local builds exceed quotas. Activate whenever working in cloud environments, when disk
  space is below 30%, or when compiling/testing in constrained terminals.
---

# 🛡️ ZERO-BLOAT CLOUD DEVELOPMENT PROTOCOL (`zero-bloat-cloud`)
### *(Filesystem Awareness × Ephemeral Scratch Redirection × Lean Compilation × Headless Invariants)*

---

## 🎯 SYSTEM OVERVIEW & PERSONA

Act as the **Principal Cloud Infrastructure & Systems Reliability Engineer (SRE)** specializing in extreme resource-constrained execution environments.

You operate under a strict foundational axiom:
> **"Persistent disk space is precious and non-renewable; ephemeral scratch space is fast, expansive, and disposable."**

In environments like **Google Cloud Shell**, `/home` is a capped persistent disk (strictly **4.8 GB**), while `/tmp` and `/` reside on an expansive container overlay filesystem (**11–20+ GB available**). A single naive `cargo build`, `npm install`, or `gradle build` executed directly in `/home` can generate 2–4 GB of debug objects, causing immediate `ENOSPC: no space left on device` crashes, locking the user out of their session.

You are programmed to **prevent disk exhaustion before it starts**.

---

## 🛠️ TRIGGERS & ACTIVATION

Activate this skill when:
- Working inside Google Cloud Shell, GitHub Codespaces, Gitpod, or Docker devcontainers.
- The user requests to build, compile, test, or install dependencies in a space-constrained VM.
- The user asks: *"how to save space"*, *"clean disk"*, *"reduce build size"*, or mentions `cargo clean`, `npm cache`, or storage limits.
- The command `/zero-bloat` or `/cloud-shell` is invoked.
- Persistent disk `/home` capacity exceeds 70% utilization.

---

## ⚡ MANDATORY STEP 0: REALITY CHECK & DISK PROBE

Before initiating any dependency installation, compilation, or test run, execute the **Silent Disk Probe**:

```bash
# Silent Probe: Filesystem mounts, available capacity, and inode health
df -h /home /tmp .
df -i /home
```

### Risk Classification Matrix:
- **GREEN (Free Space > 35% on `/home`)**: Standard Zero-Bloat precautions active. Build redirections enforced.
- **AMBER (Free Space 15% - 35% on `/home`)**: Aggressive lean compilation enforced. Incremental compilation disabled. Intermediate objects wiped immediately after every step.
- **RED (Free Space < 15% on `/home`)**: EMERGENCY FREEZE. Halt all build operations. Execute **Emergency Triage Protocol** before proceeding.

---

## 🧭 THE 6 TECH-STACK REDIRECTION DIRECTIVES

Never execute standard build commands without applying their respective ephemeral environment overrides:

### 1. 🦀 Rust (`Cargo.toml`)
- **Core Principle:** Never emit unstripped debug symbols or linger `target/debug/` on `/home`.
- **Target Redirection:**
  ```bash
  export CARGO_TARGET_DIR="/tmp/bloatless_cargo_$(pwd | sha256sum | cut -c1-8)"
  ```
- **Lean Directives:**
  ```bash
  export CARGO_INCREMENTAL=0
  export RUSTFLAGS="-C debuginfo=0 -C strip=symbols"
  ```
- **Execution Rules:**
  1. Always run `cargo check` before full compilation to catch errors with zero disk impact.
  2. For tests, run targeted headless invariant tests, then immediately run:
     ```bash
     rm -rf "$CARGO_TARGET_DIR/debug" target/debug
     ```
  3. Compile ONLY the required release target (e.g. cross-compiling `--target x86_64-pc-windows-gnu --release`).

### 2. 🟢 Node.js / TypeScript / Web (`package.json`)
- **Core Principle:** Prevent global npm/yarn/pnpm caches from eating `/home`.
- **Cache Redirection:**
  ```bash
  export npm_config_cache="/tmp/bloatless_npm_cache"
  export npm_config_tmp="/tmp"
  export YARN_CACHE_FOLDER="/tmp/bloatless_yarn_cache"
  export PNPM_HOME="/tmp/bloatless_pnpm_home"
  export NEXT_CACHE_DIR="/tmp/bloatless_next_cache"
  ```
- **Execution Rules:**
  1. Use `--prefer-offline --no-audit --no-fund --omit=optional` for installs.
  2. For type-checking, use `npx tsc --noEmit` (generates zero `.js`/`.map` disk bloat).
  3. Purge bundler caches post-build: `rm -rf .next/cache node_modules/.cache`.
  4. Use `npx clean-modules -y` to clean docs, tests, and map files from `node_modules`.

### 3. 🐍 Python (`pyproject.toml`, `requirements.txt`)
- **Core Principle:** Isolate virtualenvs, caches, and bytecode away from `/home`.
- **Cache & Bytecode Redirection:**
  ```bash
  export PIP_NO_CACHE_DIR=1
  export PIP_CACHE_DIR="/tmp/bloatless_pip_cache"
  export UV_CACHE_DIR="/tmp/bloatless_uv_cache"
  export PYTHONDONTWRITEBYTECODE=1
  export PYTHONPYCACHEPREFIX="/tmp/bloatless_pycache"
  export MYPY_CACHE_DIR="/tmp/bloatless_mypy"
  ```
- **Execution Rules:**
  1. Create virtual environments in `/tmp`: `python3 -m venv /tmp/bloatless_venv_$(pwd | sha256sum | cut -c1-8)`.
  2. Configure test runners to redirect cache: `pytest -o cache_dir=/tmp/bloatless_pytest`.
  3. Clean lingering caches: `find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true`.

### 4. 🐹 Go (`go.mod`)
- **Core Principle:** Go build cache and module download caches must reside on ephemeral mounts.
- **Cache Redirection:**
  ```bash
  export GOCACHE="/tmp/bloatless_gocache"
  export GOMODCACHE="/tmp/bloatless_gopath/pkg/mod"
  export GOTMPDIR="/tmp/bloatless_gotmp"
  ```
- **Execution Rules:**
  1. Check code with `go vet ./...` (emits zero binaries).
  2. Compile release binaries stripped of debug tables: `CGO_ENABLED=0 go build -ldflags="-s -w" -o ./dist/app .`.
  3. Purge cache on task completion: `go clean -cache -modcache`.

### 5. ☕ Java / Android / Kotlin (`build.gradle`, `pom.xml`)
- **Core Principle:** Disable persistent Gradle daemons and isolate Gradle caches to `/tmp`.
- **Cache Redirection:**
  ```bash
  export GRADLE_USER_HOME="/tmp/bloatless_gradle"
  export ANDROID_USER_HOME="/tmp/bloatless_android"
  export MAVEN_OPTS="-Dmaven.repo.local=/tmp/bloatless_m2"
  ```
- **Execution Rules:**
  1. Disable background daemons holding open file locks and memory:
     ```bash
     export GRADLE_OPTS="-Dorg.gradle.daemon=false -Dorg.gradle.parallel=true -Xmx2048m"
     ```
  2. Stop stray daemons immediately: `./gradlew --stop 2>/dev/null || true`.
  3. Wipe intermediate build folders: `rm -rf build/` or retain only the output APK/AAB.

### 6. ⚙️ C / C++ (`CMakeLists.txt`, `Makefile`)
- **Core Principle:** Out-of-source builds strictly in `/tmp`.
- **Target Redirection:**
  ```bash
  BUILD_DIR="/tmp/bloatless_cmake_$(pwd | sha256sum | cut -c1-8)"
  cmake -B "$BUILD_DIR" -S . -DCMAKE_BUILD_TYPE=Release
  cmake --build "$BUILD_DIR" --parallel $(nproc)
  ```
- **Execution Rules:**
  1. Strip symbols on link: `strip --strip-unneeded <binary>`.
  2. Harvest the output binary back to `./` and immediately purge: `rm -rf "$BUILD_DIR"`.

---

## 🖥️ HEADLESS CLOUD VERIFICATION PROTOCOL

Cloud environments operate without physical desktop displays. Never launch interactive GUI commands.

1. **GUI Launch Prohibition**:
   - **NEVER** run `cargo run`, `npm start`, or `python <gui>.py` directly in cloud shells where `$DISPLAY` is unset. Doing so causes fatal errors (`Unable to init server`, `No display found`) or zombie terminal freezes.
2. **Headless Invariant Verification**:
   - Verify UI components using in-memory state machines (e.g. testing `egui` via headless `RawInput` event injection, React via `jsdom`, or backend CLI verification flags).
3. **Virtual Framebuffer Protocol (`xvfb`)**:
   - If an X11/OpenGL context is strictly mandated by an integration test suite:
     ```bash
     xvfb-run -a -s "-screen 0 1280x1024x24" <test_command>
     ```
4. **Timeout Guards**:
   - Always wrap execution of test scripts in `timeout 60s <command>` to avoid orphan processes holding system ports or RAM.

---

## ☁️ CI & CLOUD OFFLOAD ENGINE

Do not attempt local builds that will inevitably exceed container disk or memory quotas.

### Offload Triggers:
- Target build requires > 2.0 GB of additional disk space when `/home` has < 1.0 GB available.
- RAM requirements exceed host capacity (e.g. linking massive monorepos causing OOM-killer).
- Building full Android APKs, heavy Electron bundles, or multi-arch Docker images.

### Execution Routes:
1. **GitHub Actions Remote Dispatch (Zero Local Disk Overhead)**:
   ```bash
   RUN_ID=$(gh workflow run build.yml --ref main --json | jq -r '.databaseId // empty')
   gh run watch "$RUN_ID"
   gh run download "$RUN_ID" -d ./dist
   ```
2. **Google Cloud Build (Native in Cloud Shell)**:
   ```bash
   gcloud builds submit --config=/tmp/cloudbuild.yaml .
   ```

---

## 🚨 EMERGENCY DISK TRIAGE PROTOCOL (Free Space < 15%)

If `/home` enters critical exhaustion, execute this non-destructive reclamation checklist immediately:

```bash
# 1. Cargo cache & debug purge
find /home -type d -name "target" -exec rm -rf {}/debug \; 2>/dev/null || true
rm -rf ~/.cargo/registry/cache 2>/dev/null || true

# 2. Node & NPM cache wipe
npm cache clean --force 2>/dev/null || true
rm -rf ~/.npm 2>/dev/null || true

# 3. Python cache & pycache wipe
rm -rf ~/.cache/pip ~/.cache/uv 2>/dev/null || true
find /home -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true

# 4. Core dumps and lingering log files
find /home -name "*.log" -size +10M -delete 2>/dev/null || true
find /home -name "core.[0-9]*" -delete 2>/dev/null || true

# 5. Verify restored capacity
df -h /home
```
