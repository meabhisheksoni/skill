# 🛠️ Universal Refactor Skill (`refactor`)
### *Forensic Architectural Refactoring & God-Object Decomposition Agent*
**Code Review Graph (CRG) Blast Radius × Anti-Fragile Inversion × Scissors-Slice Protocol**

---

## 📖 Overview

The **Universal Refactor Skill** is an enterprise-grade AI agent capability engineered to safely decompose monolithic **"God Objects"** and tangled legacy files into cohesive, modular architectures.

Standard AI coding tools often perform superficial "vibe slicing"—blindly moving functions between files, which introduces circular dependencies, subtle runtime regressions, state leaks, and memory bloat. 

This skill solves that problem by fusing three battle-tested architectural paradigms:
1. **Code Review Graph (CRG):** Uses Tree-Sitter AST knowledge graphs to mathematically map Fan-In/Fan-Out dependencies and calculate the exact blast radius before touching code.
2. **Anti-Fragile Systems Thinking:** Conducts an Inversion Pre-Mortem (*"How will this refactor destroy the system at runtime?"*) to define non-negotiable runtime invariants.
3. **Scissors-Slice Protocol:** Enforces mandatory pre-edit physical safety backups (`backups/`), silent submodule authoring without touching the monolith, an interactive user approval gate, and coordinator rewiring.

---

## 🌍 100% Universal & Multi-Stack Compatibility

The skill is completely language- and framework-agnostic. It works across any Git codebase supported by Tree-Sitter:

| Tech Stack | AST Dependency Parsing (CRG) | Build & Test Verification Gate |
| :--- | :--- | :--- |
| **Rust** | `tree-sitter-rust` | `cargo check && cargo test` |
| **TypeScript / Node / React** | `tree-sitter-typescript` / `javascript` | `npm run build && npm test` / `tsc --noEmit` |
| **Python / FastAPI / Django** | `tree-sitter-python` | `pytest && mypy .` |
| **Go** | `tree-sitter-go` | `go vet ./... && go test ./...` |
| **Java / Kotlin** | `tree-sitter-java` | `mvn test` / `./gradlew test` |
| **C / C++** | `tree-sitter-c` / `cpp` | `cmake --build build && ctest` |

---

## ⚡ 5-Phase Refactoring Lifecycle

```text
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 1: CRG BLAST RADIUS & AST ANALYSIS                                    │
│ • crg build: Construct AST knowledge graph via Tree-sitter                   │
│ • crg impact / architecture: Map Fan-In, Fan-Out, and cross-module coupling  │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 2: ANTI-FRAGILE INVERSION & INVARIANT CHECKLIST                       │
│ • Pre-Mortem: "How will this refactor break state, threads, or memory?"     │
│ • Establish non-negotiable runtime invariant gates                          │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 3: SCISSORS-SLICE SILENT EXTRACTION & SAFETY BACKUP                   │
│ • MANDATORY: Create physical backup in `backups/<file>.original.<ext>`      │
│ • Silently author cohesive submodules in target directory                   │
│ • ZERO EDITS to the original monolith in this phase                         │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 4: INTERACTIVE USER APPROVAL GATE                                     │
│ • Present Blast Radius report, extracted modules, and coordinator plan      │
│ • HALT and wait for explicit human sign-off before modifying monolith       │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 5: COORDINATOR REWIRING & DETERMINISTIC VERIFICATION                  │
│ • Replace monolith with lean coordinator (< 400 lines)                      │
│ • Execute stack-native build and test verification suite                    │
│ • Auto-rollback from `backups/` if any invariant fails                      │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 🚀 Installation & Usage

### 1. In Google Antigravity (AGY) / Gemini CLI
Clone or copy the skill directory directly into your Antigravity skills path:
```bash
mkdir -p ~/.gemini/config/skills/refactor
curl -sL https://raw.githubusercontent.com/meabhisheksoni/skill/main/SKILL.md -o ~/.gemini/config/skills/refactor/SKILL.md
```

### 2. In Claude Code
Install into your custom skills directory:
```bash
mkdir -p ~/.claude/skills/refactor
curl -sL https://raw.githubusercontent.com/meabhisheksoni/skill/main/SKILL.md -o ~/.claude/skills/refactor/SKILL.md
```

### 3. In Cursor / Windsurf
Add `SKILL.md` to your workspace `.cursor/rules/refactor.mdc` or `.windsurf/rules/refactor.md`.

---

## 🛠️ Prerequisites
For Phase 1 (AST Dependency Graph & Blast Radius analysis), install `code-review-graph`:
```bash
pip install --user code-review-graph
```

---

## 📄 License
MIT License. Free to use, adapt, and distribute across all AI agent workflows.
