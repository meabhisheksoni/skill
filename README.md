# 🛠️ Universal Refactor Skill Suite
### *Forensic Architectural Refactoring & God-Object Decomposition Protocol*
**Code Review Graph (CRG) Blast Radius × Anti-Fragile Inversion × Scissors-Slice Protocol**

[![Universal](https://img.shields.io/badge/Architecture-Universal%20Multi--Stack-blue.svg)](#-100-universal--multi-stack-compatibility)
[![Protocol](https://img.shields.io/badge/Protocol-Anti--Fragile%20%2B%20Scissors--Slice-green.svg)](#-the-three-pillars-of-the-skill)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## 📖 Executive Summary

The **Universal Refactor Skill** is an enterprise-grade AI agent capability engineered to safely decompose monolithic **"God Objects"** (2,000+ line files) and tangled legacy modules into cohesive, modular architectures.

Standard AI coding tools often perform superficial "vibe slicing"—blindly moving functions between files, which introduces circular dependencies, subtle runtime regressions, state leaks, and memory bloat.

This repository provides a **completely self-contained, context-complete refactoring suite**. Any AI agent (Google Antigravity, Gemini CLI, Claude Code, Cursor, Windsurf, Codex) can read this repository from scratch and immediately execute surgical, zero-regression code refactoring across **any tech stack**.

---

## 🏛️ The Three Pillars of the Skill Suite

This repository contains three tightly integrated skills located in the [`skills/`](./skills/) directory:

```text
skills/
├── refactor/            # The Master Orchestrator (CRG + Anti-Fragile + Scissors-Slice)
│   └── SKILL.md
├── anti-fragile-think/  # Lead SRE Cognitive Persona & Failure-Obsessed Inversion Protocol
│   └── SKILL.md
└── scissors-slice/      # Surgical Submodule Creation & Safety Backup Protocol
    └── SKILL.md
```

---

### Pillar 1: The Anti-Fragile Thinking Protocol (`anti-fragile-think`)
> *"If this system can fail, it eventually will — quietly, slowly, and expensively."*

Before modifying a single line of code, the agent must abandon the naive "happy path" and assume the persona of a **Lead SRE and Forensic Inversion Analyst**.

#### 1. The Inversion Directive (Design Away From Catastrophe)
* **The 1-Year Post-Mortem:** Mentally simulate that it is 12 months in the future. The project crashed, the database is corrupt, users are furious, and the architecture failed. What was the exact root cause of this autopsy?
* **Technically Correct vs. Practically Toxic:** How can this refactored code pass 100% of unit tests and compiler checks while actively destroying the end-user experience (e.g., hidden micro-stutters, UI thread blocking, cache stampedes)?
* **The Scale Inversion:** What looks elegant at 10 items/users but creates quadratic ($O(N^2)$) event-loop deadlocks or connection starvation at 10,000?
* **Nuke over Poison:** Where is partial execution or fallback graceful degradation worse than immediate, loud termination?

#### 2. The 2nd & 3rd-Order Reasoning Engine ("And Then What?" Recursion)
```text
[1st ORDER: Direct Action] ────────► What immediately happens? (e.g. Extracting state to a shared struct)
        │
        ▼
[2nd ORDER: Adaptive Response] ────► How do other modules react? (e.g. Callers now acquire mutexes concurrently)
        │
        ▼
[3rd ORDER: Emergent Feedback] ────► What long-term chaos emerges? (e.g. Deadlocks under high event frequency)
```

#### 3. Chesterton's Fence & Hidden Load-Bearing Nuance
* **The Iron Rule:** Never delete, move, or simplify awkward, complex, or verbose logic without first proving why it was put there in the first place.
* **Refactoring Principle:** Clumsy-looking code often represents historical scar tissue guarding against obscure OS bugs, window-manager quirks, or race conditions. If you cannot explain the scar, you are not allowed to cut it.

---

### Pillar 2: The Scissors-Slice Protocol (`scissors-slice`)
The mechanical execution of the refactoring follows strict surgical isolation stages:

1. **Responsibility & Import Analysis:** Maps every function, state variable, and event loop into clean single-responsibility domains (UI/Presentation, State/Coordination, I/O/Platform, Schemas).
2. **Mandatory Safety Backup:** Creates a physical copy in `backups/<file>.original.<ext>` before any edits occur.
3. **Silent Submodule Creation:** Creates the new modular files in a clean directory **without touching the original monolith**.
4. **Interactive User Approval Gate:** The agent HALTS and presents the full architectural diff, module graph, and proposed coordinator to the user for explicit confirmation before touching the main file.
5. **Coordinator Rewiring:** Only after explicit approval, the monolith is refactored into a clean coordinator (< 400 lines) that delegates to the new submodules while preserving 100% API backwards compatibility.

---

### Pillar 3: Code Review Graph (CRG) Data Engine
Structural decisions are grounded in objective AST knowledge graphs via `code-review-graph`:
* **Knowledge Graph Construction:** `crg build` constructs a multi-language Tree-Sitter AST dependency graph.
* **Blast Radius Analysis:** `crg impact --file <path>` calculates Fan-In (external callers who depend on this file) and Fan-Out (external systems this file calls).
* **Hotspot Detection:** `crg large-functions` locates oversized functions and God Objects violating the Single Responsibility Principle.
* **Architecture Coupling:** `crg architecture` flags high-coupling cross-community edges.

---

## ⚡ 5-Phase Master Operational Lifecycle

```text
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 1: CRG BLAST RADIUS & AST ANALYSIS                                    │
│ • Run `crg build` to construct Tree-Sitter AST knowledge graph              │
│ • Run `crg architecture` & `crg impact` to map external blast radius        │
│ • Identify oversized functions via `crg large-functions`                    │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 2: ANTI-FRAGILE INVERSION & INVARIANT MATRIX                          │
│ • Run the 1-Year Post-Mortem & 2nd/3rd-Order failure recursion              │
│ • Inspect Chesterton's Fences before touching complex logic                 │
│ • Formulate non-negotiable runtime invariant checklist                     │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 3: SCISSORS-SLICE SILENT EXTRACTION & BACKUP GATES                    │
│ • MANDATORY: Create physical backup in `backups/<file>.original.<ext>`      │
│ • Silently author cohesive submodules in target directory                   │
│ • ZERO EDITS to the original monolith in this phase                         │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 4: INTERACTIVE USER APPROVAL GATE (STOP TOOL EXECUTION)               │
│ • Present CRG Blast Radius, Extracted Submodules, and Coordinator Blueprint │
│ • Wait for explicit human confirmation before modifying the monolith       │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 5: COORDINATOR REWIRING & STACK-AGNOSTIC VERIFICATION                 │
│ • Replace monolith with lean coordinator (< 400 lines)                      │
│ • Execute stack-native build and test verification suite                    │
│ • Auto-rollback from `backups/` if any invariant fails                      │
└─────────────────────────────────────────────────────────────────────────────┘
```

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

## 🚀 Installation & Agent Activation

### 1. In Google Antigravity (AGY) / Gemini CLI
Clone or copy the skills directly into your Antigravity skills directory:
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
MIT License. Free to use, adapt, and distribute across all AI agent ecosystems.
