---
name: refactor
description: Forensic architectural refactoring protocol combining Code Review Graph (CRG) blast radius analysis, Anti-Fragile inversion pre-mortems, and Scissors-Slice surgical submodule decoupling.
---

# 🛠️ FORENSIC ANTI-FRAGILE REFACTORING PROTOCOL (`refactor`)
### _(Code Review Graph Blast Radius × Anti-Fragile Inversion × Scissors-Slice Surgical Decoupling)_

---

## 🎯 SYSTEM OVERVIEW

The `refactor` skill is an elite, multi-phase architectural decomposition engine. It replaces superficial, ad-hoc code slicing with an SRE-grade, verified refactoring protocol designed specifically for monolithic **"God Objects"** and tangled legacy modules.

It unites three distinct engineering paradigms into one complete, self-contained system:
1. **Code Review Graph (CRG):** AST-level dependency graph mapping, Fan-In/Fan-Out coupling quantification, and blast radius containment via Tree-Sitter.
2. **Anti-Fragile Thinking Protocol:** Inversion Pre-Mortems, 2nd and 3rd-order failure modeling, Chesterton's fence preservation, and non-negotiable runtime invariant gates.
3. **Scissors-Slice Protocol:** Mandatory pre-edit physical backups (`backups/`), silent submodule authoring without touching the monolith, an interactive user approval gate, and coordinator rewiring.

---

## 🧠 PILLAR 1: THE ANTI-FRAGILE THINKING FOUNDATION

Any agent executing this skill must assume the cognitive persona of the **Lead System Reliability Engineer (SRE)**, **Principal Systems Philosopher**, and **Forensic Inversion Analyst**.  
You are **NOT here to build, cheerlead, or validate**. You are here to **destroy fragile assumptions before they manifest in reality**.

You do NOT assume good intent, happy paths, or ideal actors. You assume **confusion, misuse, scale, time drift, network entropy, human fatigue, and adversarial incentives**.

> _“If this system can fail, it eventually will — quietly, slowly, and expensively.”_

Your fundamental question before modifying any file is never _“How can this work?”_  
Your fundamental question is: **_“Under what realistic conditions will this refactor fail, mislead, corrupt state, or degrade into an expensive liability?”_**

### 1. The Inversion Directive (Design Away From Catastrophe)
Before evaluating or proposing any extraction, mentally simulate backwards from total disaster:
* **The 1-Year Post-Mortem:** Imagine it is 12 months from now. The project is dead, the database/state is corrupt, users are furious, and the architecture is being scrapped. What caused this autopsy?
* **Technically Correct vs. Practically Toxic:** How can this refactored code pass 100% of unit tests and compiler checks while actively destroying the end-user outcome (e.g., hidden micro-stutters, UI thread blocking, cache stampedes)?
* **The Scale Inversion:** What looks elegant at 10 items/users but creates quadratic ($O(N^2)$) event-loop deadlocks or connection starvation at 10,000?
* **Nuke over Poison:** Where is partial execution or fallback graceful degradation worse than immediate, loud termination?

### 2. The 2nd & 3rd-Order Reasoning Engine (The "And Then What?" Recursion)
First-order thinking solves the immediate problem. Second and third-order thinking prevents the solution from creating ten worse catastrophes:
```text
[1st ORDER: Direct Action] ────────► What immediately happens? (e.g., Extracting state to a shared struct)
        │
        ▼
[2nd ORDER: Adaptive Response] ────► How do other modules react? (e.g., Multiple callers now acquire locks concurrently)
        │
        ▼
[3rd ORDER: Emergent Feedback] ────► What long-term chaos emerges? (e.g., Lock inversion deadlock under high event frequency)
```
* **1st-Order Trap:** Novice view ("Extracting this reduces file size by 500 lines").
* **2nd-Order Collision:** Downstream systems adapt ("Because this method is now public in a submodule, other callers bypass the state coordinator").
* **3rd-Order Emergent Chaos:** Structural breakdown ("Under load, asynchronous events interleave out-of-order, corrupting workspace serialization").

### 3. Chesterton's Fence & Hidden Load-Bearing Nuance
* **The Rule:** Never delete, move, or simplify awkward, complex, or verbose logic without first proving why it was put there in the first place.
* **Refactoring Principle:** Clumsy-looking code often represents historical scar tissue guarding against obscure OS bugs, window-manager quirks, or edge-case protocol races. If you cannot explain the scar, you are not allowed to cut it.

### 4. Cross-Connected Contagion & Reality Stress-Testing
* **Cascade Coupling:** Trace how a state change in the extracted module cascades laterally into unrelated modules.
* **Temporal Drift & State Entropy:** Test how the extracted module behaves under network disconnect mid-write, rapid double-clicks (stampedes), and unbounded memory growth.

---

## ✂️ PILLAR 2: THE SCISSORS-SLICE PROTOCOL

The mechanical execution of the refactor follows the strict **Scissors-Slice** five-stage isolation lifecycle:

### Stage 1: Responsibility & Import Analysis
1. Read the target monolith and map every function, state variable, event loop, and data structure.
2. Group code elements into cohesive, single-responsibility domains:
   * **Domain A (UI / Presentation):** Rendering loops, painters, widgets, visual styles.
   * **Domain B (State & Coordination):** State machines, focus tracking, project/workspace management.
   * **Domain C (I/O & Platform/OS):** Sockets, PTY processes, file system operations, clipboard.
   * **Domain D (Configuration & Schemas):** Data transfer objects, serialization models, constants.

### Stage 2: Silent Submodule Creation & Safety Backup (MANDATORY)
1. **Physical Safety Backup:** Before writing or altering a single character of code, create a physical copy:
   ```bash
   mkdir -p backups
   cp <target_file> backups/<target_file_basename>.original.<ext>
   ```
2. **Silent Authoring:** Create the new submodule files in a dedicated directory (e.g. `src/ui/`, `src/modules/`, `components/`).
3. **ZERO EDITS TO MONOLITH:** In this stage, the original monolith MUST NOT be edited, truncated, or modified in any way.

### Stage 3: Interactive User Approval Gate (CRITICAL STOP)
Halt execution of automated file editing tools. Present a structured refactoring report to the user:
* Extracted submodules and their line counts.
* Responsibility boundary mapping.
* The proposed coordinator code that will replace the monolith.
* Explicitly request confirmation: *"Shall I proceed to Stage 4 (Coordinator Integration)?"*

### Stage 4: Coordinator Integration & Rewiring
Only after receiving explicit human approval:
1. Transform the original monolithic file into a clean, lightweight **Coordinator** (< 400 lines) that imports and orchestrates the newly created submodules.
2. Ensure the public interface/API remains 100% backwards-compatible so external callers experience zero breakages.

### Stage 5: Verification & Deterministic Rollback
Run the stack-native compiler and test verification suite. If any invariant is violated or tests break, immediately diagnose and fix, or execute an atomic rollback from `backups/`.

---

## 🌐 PILLAR 3: THE CODE REVIEW GRAPH (CRG) DATA ENGINE

To prevent blind guessing, all structural decisions are guided by **Code Review Graph (CRG)**:

1. **Build Knowledge Graph:**
   ```bash
   crg build
   ```
2. **Inspect Architecture & Communities:**
   ```bash
   crg architecture
   ```
   Identifies high-coupling edges between sub-communities.
3. **Detect Large / Hotspot Nodes:**
   ```bash
   crg large-functions
   ```
   Locates oversized methods and structs violating the Single Responsibility Principle.
4. **Calculate Blast Radius Before Edits:**
   ```bash
   crg impact --file <target_file>
   ```
   Quantifies Fan-In (external callers who depend on this file) and Fan-Out (external systems this file calls).

---

## ⚡ 5-PHASE OPERATIONAL WORKFLOW

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
│ • Execute stack-native build and test verification suite:                   │
│     - Rust: cargo check && cargo test                                       │
│     - TypeScript: npm run build && npm test                                 │
│     - Python: pytest && mypy .                                              │
│     - Go: go vet ./... && go test ./...                                     │
│ • Auto-rollback from `backups/` if any invariant fails                      │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 📋 STACK-AGNOSTIC VERIFICATION MATRIX

| Tech Stack | AST Dependency Parsing (CRG) | Build & Test Verification Gate |
| :--- | :--- | :--- |
| **Rust** | `tree-sitter-rust` | `cargo check && cargo test` |
| **TypeScript / Node / React** | `tree-sitter-typescript` / `javascript` | `npm run build && npm test` / `tsc --noEmit` |
| **Python / FastAPI / Django** | `tree-sitter-python` | `pytest && mypy .` |
| **Go** | `tree-sitter-go` | `go vet ./... && go test ./...` |
| **Java / Kotlin** | `tree-sitter-java` | `mvn test` / `./gradlew test` |
| **C / C++** | `tree-sitter-c` / `cpp` | `cmake --build build && ctest` |
