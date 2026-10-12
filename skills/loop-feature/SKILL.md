---
name: loop-feature
description: >-
  Adaptive all-in-one autonomous feature development engine. Intelligently routes between 3 execution tiers:
  Tier 1 (Surgical Fast: zero-overhead instant edits for colors, lines, and UI fixes),
  Tier 2 (Focused Feature: single-agent linear step-by-step for wiring scattered pieces or adding components), and
  Tier 3 (Hardened Slices: full anti-fragile pre-mortem, adversarial audit, atomic chunking, and isolated subagents for complex architectures).
  Includes Prompt Enhancement, CBM/CRG Grounding, Interactive Clarification, and Autonomous Verification.
  Activate on /loop-feature, /loop, loop-feature, or when asked to build, modify, or streamline a feature.
---

# 🔄 MASTER LOOP FEATURE ENGINE (`loop-feature`)
### _(Adaptive 3-Tier Execution × Prompt Grounding × Inversion Planning × Autonomous Implementation)_

---

## 🎯 SYSTEM OVERVIEW: "RIGHT-SIZED AUTOMATION"

`loop-feature` is an **adaptive, closed-loop feature development engine**. It solves the two biggest failure modes in AI coding:
1. **The Over-Engineering Trap:** Using a 5-round audit, 3 chunks, and 4 subagents just to change a button color or tweak a line of text.
2. **The Context-Pollution Trap:** Trying to build a complex, multi-tier database + worker + UI system in a single 40,000-token chat session where the AI hallucinates imports and overwrites working code.

**The Solution:** An **Adaptive 3-Tier State Machine** that auto-detects the scope of your request and selects the optimal execution gear:

```text
                                  USER REQUEST
                 ("/loop [feature / fix / unstructured alignment]")
                                       │
                                       ▼
                     ┌───────────────────────────────────┐
                     │ PHASE 0: ADAPTIVE SCOPE DETECTOR  │
                     │ (Analyze files, LOC, risk, AST)   │
                     └─────────────────┬─────────────────┘
                                       │
        ┌──────────────────────────────┼──────────────────────────────┐
        ▼                              ▼                              ▼
  [TIER 1: SURGICAL FAST]     [TIER 2: FOCUSED FEATURE]      [TIER 3: HARDENED SLICES]
  (Color, text, 1-2 lines,    (Naya component/modal, API,    (Cross-cutting DB + Queue +
   UI alignment, quick fix)    scattered logic alignment)     UI, high data-corruption risk)
        │                              │                              │
  • 0 chunks, 0 subagents      • 0 chunks, single-agent       • Full atomic chunking (DAG)
  • CBM instant locate         • Light grounded spec          • Flash subagent audit
  • Direct edit in place       • In-process step-by-step      • Isolated subagents per chunk
  • Fast build/lint check      • Local verification gate      • Strict circuit breakers
  • ⚡ Done in seconds!        • 🎯 Done in 1 clean turn!     • 🛡️ Production certified!
```

---

## 🚦 PHASE 0: ADAPTIVE SCOPE & COMPLEXITY CLASSIFIER

Before writing a single file or spawning any subagent, the Lead Agent runs a rapid classification:

| Dimension | Tier 1: Surgical Fast | Tier 2: Focused Feature | Tier 3: Hardened Slices |
|:---|:---|:---|:---|
| **Typical Tasks** | Color change, text fix, padding/margin, 1-2 lines in existing function, config tweak | New UI modal, single API endpoint, bringing scattered functions into 1 clean flow | Database migration + backend worker + realtime state + offline sync |
| **Files Impacted** | 1 file (rarely 2) | 2–4 related files | 5+ files across multiple architectural layers |
| **Estimated LOC** | < 50 LOC | 50–250 LOC | 250+ LOC or high-risk contracts |
| **Data Risk** | Zero (Pure presentation/tweak) | Low (Standard CRUD / state flow) | High (Data loss, race conditions, DB schema) |
| **Execution Gear** | **Direct Surgical Edit** | **Linear In-Process Step-by-Step** | **Multi-Agent Chunk DAG** |

---

## ⚡ TIER 1: SURGICAL FAST PROTOCOL (Quick Tweaks & Aesthetics)
> _Use when: Color change, label fix, small CSS/Tailwind adjustment, single-line logic fix, or quick parameter change._

```text
CBM Locate ➔ Surgical Edit ➔ Quick Verification ➔ Complete
```

1. **Locate Target via CBM:** Call `search_code` to pinpoint the exact file and line number. Never blind-scan the repo.
2. **Execute Surgical Edit:** Use `replace_file_content` to make the exact change without modifying surrounding logic.
3. **Quick Gate Check:** Run lint/build check if applicable (e.g. `npm run check` or `tsc --noEmit`).
4. **Immediate Closure:** Report the exact change made with a clickable file link. **Zero planning files, zero chunks, zero wasted tokens.**

---

## 🎯 TIER 2: FOCUSED FEATURE PROTOCOL (Single-Agent Linear Execution)
> _Use when: Adding a new modal, a single REST/tRPC endpoint, a localized state store, or **bringing distributed/unstructured code into one clean line**._

```text
Grounding ➔ 1-Page Light Spec ➔ Step-by-Step Direct Execution ➔ Gate Check
```

### Step 1: Codebase Grounding & Alignment Map
- Use CBM (`search_graph`, `trace_path`) to map the scattered pieces.
- If bringing distributed pieces together: Identify where logic is currently duplicated or fragmented across files.
- If ambiguous, ask 1 concise question using `ask_question`.

### Step 2: 1-Page In-Memory Grounded Spec
Draft a lean, focused plan (no bloated pre-mortem needed):
- Target files to touch.
- Inbound parameters & outbound return types.
- Step 1 ➔ Step 2 ➔ Step 3 implementation sequence.

### Step 3: In-Process Step-by-Step Execution
- Execute sequentially **within the same session** (no subagent context-switching overhead):
  - Step A: Update data models / types.
  - Step B: Implement service / utility logic.
  - Step C: Wire UI component / screen.
- Verify incrementally after each modification.

### Step 4: Verification & Diff Check
- Run local tests/build.
- Confirm end-to-end functionality.
- Prompt for `sync-graphs.bat` if schema or graph changed.

---

## 🛡️ TIER 3: HARDENED SLICES PROTOCOL (Full Anti-Fragile Machine)
> _Use when: Complex cross-cutting architecture, database migrations, background workers, offline sync, or features with high concurrency/data-loss risks._

```text
Pillar 1: Enhance & Ground ➔ Pillar 2: Inversion Plan & Chunks ➔ Pillar 3: Flash Audit ➔ Pillar 4: Isolated Subagents DAG
```

### Pillar 1: Prompt Enhancement & Interactive Clarification Gate
1. **Deconstruct Intent:** Parse user requirements into primary goal, triggers, data shape, and failure expectations.
2. **2-Engine Grounding:**
   - CBM (`codebase-memory-mcp`): AST symbol locations and inbound caller graph.
   - CRG (`code-review-graph`): 2-hop downstream blast radius and affected flows.
3. **Clarification Gate:** If multiple architectural paths exist, call `ask_question` with structured options. Never guess on high-risk features.
4. **Output:** `features/<feature-name>/01-grounded-spec.md`.

### Pillar 2: Anti-Fragile Inversion Planning & Atomic Slicing
1. **6-Month Pre-Mortem Simulation:** Address all 5 Chaos Vectors (Concurrency/Locks, Process Lifecycles, Semantic Validation, Client State Isolation, Chesterton's Fence comments).
2. **Decompose into Isolated Chunks:** Author standalone chunk specs in `features/<feature-name>/chunks/`:
   ```text
   features/<name>/chunks/
   ├── chunk-01-database-schema.md
   ├── chunk-02-core-engine.md
   ├── chunk-03-api-endpoints.md
   └── chunk-04-frontend-ui.md
   ```
   *Every chunk contains:* Scope boundaries, inbound prerequisites, outbound interface contracts, 100% complete copy-pasteable code (no `// TODO`), and local verification commands.
3. **Execution Manifest:** Author `features/<feature-name>/execution-manifest.md` containing the dependency DAG.

### Pillar 3: Adversarial Forensic Audit (Hardening Gate)
1. **Spawn Fresh Flash Auditor:** Dispatch an isolated `flash` subagent with 0 prior chat memory to attack `02-master-plan.md` and the chunks directly on disk.
2. **Physical Proof Gate:** Auditor must cite physical file paths, exact line numbers (`#L...`), and deterministic failure mechanics.
3. **Surgical Patching:** Lead Architect verifies findings against disk and applies fixes until **0 Critical Flaws remain**.
4. **Certification:** Save `features/<feature-name>/02-master-plan-CERTIFIED.md`.

### Pillar 4: Isolated Sequential Subagent Execution
1. **One Chunk at a Time:** Execute strictly according to `execution-manifest.md`.
2. **Zero Context Pollution:** Each executing subagent receives **ONLY** its targeted chunk file and direct interface contracts. Zero chat history bloat = maximum precision.
3. **Post-Flight Local Gate:** Run the chunk's verification command (e.g. `npx tsc --noEmit`, test script).
4. **Circuit Breaker:** If a gate fails, allow 1 surgical fix attempt. If still failing, halt immediately and alert the user—never poison dependent chunks.
5. **Final Acceptance:** Run full test suite, review CRG git diff, and prompt user to run `sync-graphs.bat`.

---

## 📁 DISK ARTIFACT RETENTION RULES

To keep the repository clean:
* **Tier 1 (Surgical):** Leaves **0 markdown clutter**. Code is modified directly.
* **Tier 2 (Focused):** Leaves optional `features/<name>/spec.md` only if feature is non-trivial.
* **Tier 3 (Hardened):** Generates full structured audit trail in `features/<name>/`:
  ```text
  features/<feature-name>/
  ├── 01-grounded-spec.md
  ├── 02-master-plan-CERTIFIED.md
  ├── execution-manifest.md
  └── chunks/
      ├── chunk-01-[scope].md
      └── chunk-0N-[scope].md
  ```

---

## 🚀 HOW TO TRIGGER

Activate on any of:
```text
/loop-feature [description]
/loop [description]
loop-feature [description]
```

### Adaptive Behavior in Action:
- `/loop navbar ke active link ka text-color emerald-500 kardo`  
  ➔ **Tier 1 Auto-Selected:** CBM finds navbar ➔ edit line ➔ build check ➔ Done in 5 seconds.
- `/loop transactions table me 'payment_mode' filter add karo aur bikhri hui styling ek component me laao`  
  ➔ **Tier 2 Auto-Selected:** Grounds filter & UI ➔ 1-page spec ➔ linear code edit ➔ verified.
- `/loop offline SQLite delta sync queue banao jo Google Drive appdata me atomic zip upload kare`  
  ➔ **Tier 3 Auto-Selected:** Pre-mortem ➔ 5 chaos vectors ➔ chunking ➔ audit ➔ isolated subagent DAG.
