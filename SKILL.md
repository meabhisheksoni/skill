---
name: refactor
description: Forensic architectural refactoring protocol combining Code Review Graph (CRG) blast radius analysis, Anti-Fragile inversion pre-mortems, and Scissors-Slice surgical submodule decoupling.
---

# 🛠️ FORENSIC ANTI-FRAGILE REFACTORING PROTOCOL (`refactor`)
### _(Code Review Graph Blast Radius × Anti-Fragile Inversion × Scissors-Slice Surgical Decoupling)_

---

## 🎯 SYSTEM OVERVIEW

The `refactor` skill is an elite, multi-phase architectural decomposition engine. It replaces superficial, ad-hoc code slicing with an SRE-grade, verified refactoring protocol designed specifically for monolithic **"God Objects"** and tangled legacy modules.

It unites three distinct engineering paradigms:
1. **Code Review Graph (CRG):** AST-level dependency graph mapping, Fan-In/Fan-Out coupling quantification, and blast radius containment.
2. **Anti-Fragile Systems Thinking:** Inversion Pre-Mortem, non-negotiable invariant preservation, and zero-regression chaos vector modeling.
3. **Scissors-Slice Protocol:** Mandatory pre-edit safety backups, silent submodule creation without touching the original file, interactive user approval gates, and coordinator pattern transformation.

---

## ⚡ 5-PHASE OPERATIONAL WORKFLOW

```text
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 1: CODE REVIEW GRAPH (CRG) BLAST RADIUS & AST ANALYSIS                │
│ • crg build & graph queries: Map caller/callee AST graph                    │
│ • Quantify Fan-In / Fan-Out coupling & shared mutable state vectors         │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 2: ANTI-FRAGILE INVERSION & CHAOS VECTOR MATRIX                       │
│ • Pre-Mortem: "How will this refactor destroy the system at runtime?"       │
│ • Formulate Non-Negotiable Invariant Checklist                              │
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
│ PHASE 5: COORDINATOR REWIRING & DETERMINISTIC VERIFICATION                  │
│ • Replace monolith with lean coordinator (< 400 lines)                      │
│ • Execute compilation (`cargo check`), invariant tests (`cargo test`)       │
│ • If errors occur: auto-rollback from `backups/` and report failure mode    │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 📋 DETAILED PHASE SPECIFICATIONS

### Phase 1: CRG Blast Radius & Dependency Mapping
1. **Graph Construction:**
   ```bash
   crg build
   ```
2. **AST & Coupling Extraction:**
   - Map all symbols, methods, and shared structs defined in the target monolith.
   - Trace external callers (Fan-In): Which modules depend on this file's exports?
   - Trace internal callees (Fan-Out): What external subsystems does this file invoke?
   - Identify mutable state leaks: Look for multi-pass sweeps, duplicate iterations over data structures, and raw pointer or lock acquisitions.

### Phase 2: Anti-Fragile Inversion & Invariant Checklist
Before drafting any code, conduct an Inversion Analysis:
1. **Thread-Safety & Locks:** Do extracted modules cross thread boundaries? Are mutex guards held across async or UI dispatch points?
2. **Resource Footprint:** Does the new module boundary introduce heap allocation in steady-state rendering loops?
3. **Single Source of Truth:** Does the extraction eliminate duplicate state flags or preserve centralized state?
4. **State Machine Integrity:** Are modal dialogs, key bindings, and camera coordinate projections decoupled without event loss?

### Phase 3: Scissors-Slice Silent Extraction
1. **Physical Safety Backup:**
   ```bash
   mkdir -p backups
   cp <target_file> backups/<target_file_basename>.original.<ext>
   ```
2. **Submodule Architecture Formulation:**
   - Group mapped elements into single-responsibility domains (e.g., `ui/header.rs`, `ui/canvas.rs`, `ui/modals.rs`).
   - Write new submodules completely and cleanly.
   - **CRITICAL RULE:** Do NOT touch or delete lines from the original monolith file yet.

### Phase 4: Interactive User Approval Gate
Stop calling modification tools. Present a comprehensive refactoring report to the user:
* **Blast Radius Analysis:** Call graph summary and dependencies decoupled.
* **Extracted Files Summary:** Lines of code, newly introduced structs/traits.
* **Coordinator Plan:** How the original file will coordinate the new submodules.
* **Explicit Question:** Request user sign-off before proceeding to Phase 5.

### Phase 5: Coordinator Rewiring & Stack-Agnostic Verification
Once the user approves:
1. Refactor the original file into a clean coordinator importing and delegating to the submodules.
2. Run stack-appropriate compilation & test verification:
   * **Rust:** `cargo check && cargo test`
   * **TypeScript / JavaScript:** `npm run build && npm test` (or `tsc --noEmit`)
   * **Python:** `pytest && mypy .` (or `python -m unittest`)
   * **Go:** `go vet ./... && go test ./...`
   * **Java / Kotlin:** `mvn test` (or `./gradlew test`)
   * **C / C++:** `cmake --build build && ctest`
3. If compilation fails or tests break, immediately analyze compiler/runtime diagnostics, apply atomic fixes, or execute auto-rollback from `backups/` if fundamental invariants are violated.
