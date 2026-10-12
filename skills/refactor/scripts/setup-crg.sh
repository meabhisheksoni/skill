#!/usr/bin/env bash
# ===================================================
# Automated CRG Toolchain Bootstrap for Linux / macOS
# ===================================================
set -euo pipefail

REPO_ROOT="${1:-$(pwd)}"

echo "=== CRG TOOLCHAIN BOOTSTRAP (Linux / macOS) ==="
echo "Target Repository: $REPO_ROOT"

# 1. Check or install uv
if ! command -v uv &>/dev/null; then
    echo "[1/4] Installing uv package manager..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.local/bin:$PATH"
fi

# 2. Install code-review-graph
echo "[2/4] Installing code-review-graph via uv..."
uv tool install code-review-graph --force

# 3. Create crg alias/symlink if needed
LOCAL_BIN="$HOME/.local/bin"
mkdir -p "$LOCAL_BIN"
if [ ! -f "$LOCAL_BIN/crg" ]; then
    ln -s "$LOCAL_BIN/code-review-graph" "$LOCAL_BIN/crg" || true
fi

# 4. Initialize repository graph
echo "[3/4] Initializing Tree-sitter knowledge graph..."
"$LOCAL_BIN/code-review-graph" build --repo "$REPO_ROOT" || true

echo "[4/4] Verifying status..."
"$LOCAL_BIN/code-review-graph" status --repo "$REPO_ROOT"

echo "=== CRG SETUP COMPLETE ==="
