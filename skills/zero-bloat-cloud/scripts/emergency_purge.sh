#!/usr/bin/env bash
# Non-Destructive Emergency Cache & Bloat Purge for Cloud Shell
set -euo pipefail

echo "=== [Zero-Bloat Cloud] Executing Non-Destructive Emergency Purge ==="

# 1. Purge Cargo debug objects and registry cache
echo "--> Purging Cargo debug directories & download caches..."
find /home -type d -name "target" -exec rm -rf {}/debug \; 2>/dev/null || true
rm -rf /home/*/.cargo/registry/cache 2>/dev/null || true

# 2. Node & NPM cache
echo "--> Wiping NPM/Yarn/pnpm caches..."
npm cache clean --force 2>/dev/null || true
rm -rf ~/.npm ~/.cache/yarn 2>/dev/null || true

# 3. Python cache & pycache
echo "--> Cleaning pip, uv, and __pycache__ bytecode..."
rm -rf ~/.cache/pip ~/.cache/uv 2>/dev/null || true
find /home -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
find /home -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true

# 4. Large log files and core dumps
echo "--> Removing core dumps and large stale logs..."
find /home -name "*.log" -size +10M -delete 2>/dev/null || true
find /home -name "core.[0-9]*" -delete 2>/dev/null || true

echo ""
echo "=== Purge Complete. Updated Capacity: ==="
df -h /home
