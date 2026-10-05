# Stack-by-Stack Redirection Cheatsheet (Cloud Shell Edition)

This guide documents the exact environment variables and flags to redirect compilation and dependency caches away from `/home` to ephemeral `/tmp`.

---

## 1. Rust (`Cargo.toml`)
```bash
# Redirect all intermediate object files, rlibs, and build scripts to ephemeral /tmp
export CARGO_TARGET_DIR="/tmp/cargo-target"

# Suppress heavy DWARF debug symbol tables in debug builds
export CARGO_INCREMENTAL=0
export RUSTFLAGS="-C debuginfo=0 -C strip=symbols"

# Strip docs from local toolchain (saves ~500 MB in ~/.rustup)
rustup set profile minimal
rustup component remove rust-docs 2>/dev/null || true
```

---

## 2. Node.js / TypeScript / Web
```bash
# Redirect global package manager caches
export npm_config_cache="/tmp/npm-cache"
export npm_config_tmp="/tmp"
export YARN_CACHE_FOLDER="/tmp/yarn-cache"
export PNPM_HOME="/tmp/pnpm-home"

# Next.js and Vite cache redirections
export NEXT_CACHE_DIR="/tmp/next-cache"

# Fast type check without emitting build files
npx tsc --noEmit
```

---

## 3. Python
```bash
# Disable local wheel download cache
export PIP_NO_CACHE_DIR=1
export PIP_CACHE_DIR="/tmp/pip-cache"
export UV_CACHE_DIR="/tmp/uv-cache"

# Suppress bytecode creation
export PYTHONDONTWRITEBYTECODE=1
export PYTHONPYCACHEPREFIX="/tmp/pycache"

# Ephemeral venvs
python3 -m venv /tmp/venv
source /tmp/venv/bin/activate
```

---

## 4. Go
```bash
# Redirect Go compiler and module cache to /tmp
export GOCACHE="/tmp/go-build"
export GOMODCACHE="/tmp/go-mod"
export GOTMPDIR="/tmp/gotmp"

# Strip debug symbols on build
CGO_ENABLED=0 go build -ldflags="-s -w" -o ./dist/app .
```

---

## 5. Java / Android / Kotlin (Gradle)
```bash
# Redirect Gradle cache out of ~/.gradle
export GRADLE_USER_HOME="/tmp/.gradle"
export ANDROID_USER_HOME="/tmp/.android"

# Disable memory-eating and file-locking background daemon
export GRADLE_OPTS="-Dorg.gradle.daemon=false -Dorg.gradle.parallel=true -Xmx2048m"

# Terminate daemons
./gradlew --stop
```

---

## 6. C / C++ (CMake)
```bash
# Out-of-source build in /tmp
BUILD_DIR="/tmp/cmake-build"
cmake -B "$BUILD_DIR" -S . -DCMAKE_BUILD_TYPE=Release
cmake --build "$BUILD_DIR" --parallel $(nproc)
strip --strip-unneeded "$BUILD_DIR/my_binary"
```
