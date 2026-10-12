# 🛠️ Forensic Anti-Fragile Refactor Skill: Complete Environment & Setup Guide

This guide ensures that the **Forensic Anti-Fragile Refactoring Protocol (`refactor`)** can be installed and executed with 100% reliability on **any new PC, CI environment, or developer workstation**.

---

## ⚡ The Golden Rule: Zero Silent Fallback

The `refactor` skill enforces a **Mandatory Pre-Flight Gate**:
* **It refuses to guess.**
* **It refuses to do cosmetic line-splitting.**
* **It strictly forbids silent fallback to basic `git grep` or naive caller searches.**
* If `crg` (Code Review Graph) is absent or offline, the agent will **halt immediately**, alert the user, and execute the automated self-healing bootstrap below.

---

## 🚀 1-Click Environment Setup (For Any New PC)

### Option 1: Automated 1-Click Launcher (Windows)
Double-click or run:
```cmd
.\setup-crg.bat
```
Or run the underlying PowerShell script:
```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts\setup-crg.ps1
```

**What this automatically handles:**
1. Checks for Python (3.10+) and `uv` package manager (downloads standalone `uv` if missing).
2. Installs `code-review-graph` v2.3+ via `uv tool` with pre-compiled native Tree-sitter binaries.
3. Generates the global `crg.cmd` CLI wrapper in `~/.local/bin/`.
4. Ensures `~/.local/bin/` is present in the Windows User `PATH`.
5. Automatically registers `code-review-graph` in Gemini/Antigravity MCP configurations (`mcp_config.json`).
6. Initializes and verifies the AST knowledge graph database (`.code-review-graph/graph.db`).

---

### Option 2: Linux & macOS Setup
Run:
```bash
bash scripts/setup-crg.sh
```
Or manually:
```bash
# 1. Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$PATH"

# 2. Install code-review-graph
uv tool install code-review-graph --force

# 3. Create shorthand alias
ln -s "$HOME/.local/bin/code-review-graph" "$HOME/.local/bin/crg"

# 4. Build repo graph
code-review-graph build --repo .
```

---

## 💬 Master Prompts to Use on Any New PC

Jab bhi aap kisi **naye PC** par project clone karein ya kisi naye agent session me jayein, aap in prompts ko use kar sakte hain:

### 🌟 Prompt A: The Autonomous Refactor Master Prompt
Use this when you want the agent to autonomously verify/bootstrap the environment and refactor a monolithic file:

```text
/refactor <path/to/monolith.kt> ko forensic anti-fragile refactor protocol se refactor karo.

MANDATORY RULES:
1. Sabse pehle Phase 1 CRG Health Check verify karo (crg --version). Agar is PC par CRG toolchain missing hai, toh silent fallback mat karna — pehle setup-crg.bat execute karke environment bootstrap karo aur crg status verify karo.
2. CRG Blast Radius (crg impact --file ...) se exact Fan-In aur Fan-Out calculate karo.
3. Sirf cosmetic line-splitting mat karna: State Hoisting (@Immutable UI state classes) aur business logic separation enforce karo.
4. Har extraction se pehle backups/ me physical copy banao aur Stage 4 rewiring se pehle human approval lo.
```

---

### 🩺 Prompt B: Pure Environment Doctor Check
Use this when you want the agent to verify whether the PC is ready for refactoring:

```text
Check if CRG toolchain and Code Review Graph are operational on this PC. Run crg --version and crg status --repo .. If missing, execute setup-crg.bat to bootstrap uv, code-review-graph, crg.cmd, and mcp configs.
```

---

## 🔍 Verification & Health Check Commands

To manually verify that your environment is 100% operational:

| Command | Expected Output | Purpose |
| :--- | :--- | :--- |
| `crg --version` | `code-review-graph 2.3.x` | Verifies CLI wrapper and binary on PATH |
| `crg status --repo .` | `Nodes: X, Edges: Y, Files: Z` | Verifies SQLite Tree-sitter graph health |
| `crg impact --file <file>` | JSON with `impacted_files`, `call_sites` | Verifies real-time blast radius engine |
| `crg architecture --repo .` | ASCII/JSON architecture cluster map | Maps coupling boundaries across modules |

---

## 🏗️ Deep Architectural Refactoring Checklist

Every refactor executed with this skill must satisfy:
1. **State Hoisting & Recomposition Bounds:** Prohibit passing 15+ loose primitive arguments. Consolidate into `@Immutable` UI State data classes or scoped State Holders.
2. **Business Logic Extraction:** Presentation submodules must be purely declarative views. Hoist string parsing, date math, currency formatting, and DB/toast operations to ViewModel / Domain UseCases.
3. **Coupling Reduction:** Measure Fan-In and Fan-Out before and after using `crg impact` to prove structural dependencies were reduced.
