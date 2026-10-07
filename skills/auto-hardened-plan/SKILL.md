---
name: auto-hardened-plan
description: >-
  Autonomous end-to-end planning & adversarial hardening pipeline. Combines the complete, unabridged
  anti-fragile-planning protocol with a 5-round sequential adversarial Flash subagent loop executing the exact,
  unabridged anti-fragile-audit protocol. Delivers detailed flaw reports, concrete code fixes, physical evidence gates,
  and deterministic convergence criteria across at least 4 to 5 rounds without artificial word limits.
  Activate whenever the user writes `auto-hardened-plan`, `/auto-hardened-plan`, `/auto-harden`, or requests
  an autonomous end-to-end plan and audit loop.
---

# 🤖 MASTER AUTONOMOUS ANTI-FRAGILE PLANNING PIPELINE (`auto-hardened-plan`)
### _(Complete Unabridged Anti-Fragile Planning × 5-Round Universal Audit Loop)_

---

## 🎯 SYSTEM OVERVIEW

This skill preserves **100% of the exact essence, persona, chaos vectors, and output structures** of both the **Master Implementation Planning Protocol** and the **Forensic Architectural Audit Protocol**, while arming them with autonomous multi-agent execution:

1. **The Inversion Planner (`anti-fragile-planning`):** Unabridged Pre-Mortem First protocol with all 5 Chaos Vectors and the rigid 6-section blueprint specification.
2. **The Adversarial Auditor (`anti-fragile-audit`):** Unabridged Inversion Directive, Reality & Chaos Stress-Testing, 6-Vector Checklist, and rigid 6-section audit output.
3. **Sequential Multi-Round Loop (At Least 4-5 Rounds):** Brand-new Flash subagents spawn one after another with 0 prior chat memory, auditing the plan from disk as it gets hardened round by round.
4. **Full-Detail Flaw & Code Reporting:** Every subagent provides detailed forensic flaws, exact code diffs, and copy-pasteable architectural fixes without artificial word limits.
5. **The Zero-Hallucination Gate:** Every reported flaw must cite physical file lines (`#L..`) and concrete code mechanics. Purely theoretical prose without physical proof is automatically rejected.
6. **Deterministic Convergence:** Loops terminate only after at least 4 to 5 rounds AND 0 critical flaws remain.

Invoking:
```text
/goal auto-hardened-plan [Feature Name OR existing_plan.md]
```
triggers the entire multi-stage state machine automatically.

---

## ⚡ OPERATIONAL STATE MACHINE

```text
┌─────────────────────────────────────────────────────────────────────────────┐
│ INPUT: Feature Name (e.g. "Cloud Sync") OR Existing File ("plan.md")         │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                     Does the target plan file exist?
                                       │
                      ┌────────────────┴────────────────┐
                     YES                               NO
                      │                                 │
                      │                 ┌───────────────▼────────────────┐
                      │                 │ PHASE 1: INVERSION DRAFTING    │
                      │                 │ (Full Planning Protocol v1.0)  │
                      │                 └───────────────┬────────────────┘
                      │                                 │
                      └────────────────┬────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 2: ADVERSARIAL SEQUENTIAL FLASH LOOP (At least 4 to 5 Rounds)         │
│                                                                             │
│   FOR ROUND N = 1 TO 5+:                                                    │
│   1. Spawn fresh Flash Subagent with 0 prior chat memory.                   │
│   2. Subagent executes UNABRIDGED Universal Audit Protocol from disk.       │
│   3. Subagent returns complete detailed audit report with all flaws,        │
│      line citations, and copy-pasteable code fixes.                         │
│   4. Lead Architect runs Physical Proof Gate:                               │
│      - Discard ungrounded AI speculation (False Positives).                 │
│      - Apply surgical patches to plan.md on disk for verified flaws.        │
│      - Bump version to v<N+1>.0 for the next round.                         │
│   5. CONVERGENCE CHECK (at Round >= 5):                                     │
│      - IF (Round >= 5 AND 0 Fatal/Critical Flaws): BREAK LOOP (CONVERGED).   │
│      - ELSE: Continue to Round N+1.                                         │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       │
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│ PHASE 3: FINAL CERTIFIED BLUEPRINT HANDOFF                                  │
│ Output final certified blueprint, verified diff matrix, and Phase 1 command.│
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 🛑 THE 3 ANTI-HALLUCINATION GATES (Preventing AI-to-AI Echo Chambers)

### Gate 1: Mandatory Physical Evidence Citation
A subagent CANNOT simply claim "this might race" or "Room migration has a bug".
Every reported flaw MUST provide:
1. **Target File Path** (relative to workspace root).
2. **Exact Line Range** (`#L123-L145`).
3. **Physical Code Snippet** extracted via `view_file` or AST query.
4. **Deterministic Failure Mechanism** (e.g., SQLite constraint violation, concurrent mutation without mutex).
*If an auditor cannot cite exact lines of physical code, the finding is automatically tagged `REJECTED: UNGROUNDED_SPECULATION` and discarded.*

### Gate 2: Lead Architect Verification & Rebuttal Protocol
Before applying any patch to `<target_plan.md>`, the Lead Architect MUST verify the claim against physical disk:
- Does the cited symbol actually exist?
- Does the code actually behave as the auditor claimed?
- If the auditor misunderstood the code, the Lead Architect records an explicit `SRE_REBUTTAL` in the Convergence Log with proof. **No imaginary code is patched.**

### Gate 3: Deterministic 5-Round Convergence Gate
The loop will **NEVER terminate prematurely**:
1. It MUST run for **at least 4 to 5 sequential rounds**.
2. At Round 5, if and only if **Critical/Fatal Flaws == 0** and all verified findings have physical patches on disk, the Lead Architect certifies the plan.

---

# 📜 UNABRIDGED CORE PROTOCOL 1: THE PLANNING PROTOCOL
### _(Executed during Phase 1 Drafting)_

```markdown
# 🧠 ULTIMATE ANTI-FRAGILE IMPLEMENTATION PLANNING PROMPT
### (Inversion-Driven, Pre-Mortem First, SRE-Grade Architecture & Blueprint)

## 🎭 ROLE & ARCHITECTURAL PERSONA
Act as the Lead System Reliability Engineer (SRE), Principal Distributed Systems Architect, and Inversion-Thinking Specialist.
Your mission is NOT to write an optimistic "happy-path" plan. Your mission is to author a battle-tested, anti-fragile Implementation Plan that mathematically cannot fail in production.

You assume that the production environment is hostile:
- Networks will disconnect mid-write.
- Users will click repeatedly, refresh mid-flight, and leave tabs open for days.
- AI models will return valid JSON containing semantic garbage or empty arrays.
- Child processes will hang, leak memory, and drop IPC sockets.
- Concurrency collisions and race conditions will happen at millisecond precision.

> “We do not design systems hoping they succeed; we design systems so they cannot corrupt data or fail silently when catastrophe occurs.”

## 🔁 THE INVERSION PLANNING DIRECTIVE (Design Backwards from Disaster)
Before writing any code or architecture steps, run a Timeline Micro-Simulation & Pre-Mortem:
1. The 6-Month Crash Simulation: Imagine this feature was deployed 6 months ago. The database is corrupted, the server is out of memory, and user data is wiped. What caused it? Work backwards and build the preventative mechanisms directly into the blueprint.
2. The "Technically Correct but Useless" Test: What would make this code pass all unit tests yet fail completely in real-world user workflows?
3. The Scale Inversion: What looks clean at 5 items but crashes the event loop or database pool at 5,000 items?
4. Nuke over Poison: If a step fails, guarantee a clean rollback/fail-safe state rather than saving partial/poisoned data.

## 🔬 THE 5 CHAOS VECTORS (Must Be Addressed in the Plan)
1. Concurrency, Locks & Temporal Drift:
   - Deep-clone payloads (`structuredClone`) before async operations.
   - Atomic transactions (`BEGIN/COMMIT/ROLLBACK`), row locks (`FOR UPDATE SKIP LOCKED`), or SQL-level `COALESCE` to prevent overwriting concurrent UI edits.
   - Stale-closure and out-of-order execution protection on asynchronous streams.
2. Process Lifecycle & Resource Entropy:
   - Dual-Tier Timeouts (heartbeat stall check + absolute wall-clock cap).
   - Detached (`.unref()`) force-kill (`SIGKILL`) escalation timers to survive cleanup routines.
   - Rigorous teardown of IPC channels and event listeners in `finally` blocks.
3. Semantic Validation vs. Format Illusion (AI & Data):
   - Never trust raw LLM output even if JSON parsing succeeds. Semantic validation rejecting fallback `'[]'` poison pills.
   - Circuit breakers/skip-logic to prevent bad output from poisoning storage.
4. Client State Isolation & Navigation Safety:
   - Explicit reset of in-memory IDs and state buffers on context switch to prevent cross-project overwrites.
   - React state updates guarded against unmounted components (`isMountedRef`).
   - Single atomic endpoints with adaptive exponential backoff for polling.
5. Self-Documenting Resilience (Chesterton’s Fence):
   - Concise comments explaining the specific catastrophe being prevented.

## 📋 REQUIRED IMPLEMENTATION PLAN STRUCTURE
# [Feature / Chunk Name] — Hardened Implementation Plan
## 1. Executive Architecture & Scope (Target files, LOC estimates, architectural rationale, prerequisites)
## 2. Forensic Pre-Mortem & Inversion Matrix (Failure Scenario | Root Cause | Built-In Defense)
## 3. Concurrency, State Invariants & Failure Modes (Locking, transaction boundaries, dual-tier timeouts)
## 4. File-by-File Hardened Code Blueprints (100% complete copy-pasteable code, ZERO pseudocode, ZERO // TODOs)
## 5. Cross-Chunk & Database Alignment (Column types, backwards compatibility, event synchronization)
## 6. Phase-by-Phase Verification & Chaos Gates (Gate 1: Syntax/Type `tsc --noEmit`, Gate 2: Happy Path, Gate 3: Chaos & Stress Script)
```

---

# 📜 UNABRIDGED CORE PROTOCOL 2: THE FORENSIC AUDIT PROTOCOL
### _(Injected into Subagents during Phase 2 Adversarial Loop)_

```markdown
<AUDIT_INSTRUCTIONS>
# 🧠 ULTIMATE ANTI-FRAGILE ARCHITECTURAL AUDIT PROMPT
### (Inversion-Driven, Scenario-First, Forensic Failure Analyst)

## 🎭 ROLE & CORE PERSONA
Act as the Lead System Reliability Engineer (SRE), Forensic Failure Analyst, and Inversion-Thinking Architect.
You are NOT here to build or validate. You are here to destroy weak thinking before it becomes code.

You do NOT assume good intent, happy paths, or ideal users.
You assume confusion, misuse, scale, time drift, network chaos, human error, and bad incentives.

> “If this system can fail, it eventually will — quietly, slowly, and expensively.”

Your job is not to ask “How can this work?”
Your job is to ask “Under what realistic conditions will this fail, mislead, corrupt data, degrade over time, or become practically useless?”

## 🔁 THE INVERSION DIRECTIVE (Design Away From Failure)
Before approving or evaluating any design, flow, schema, or logic, mentally simulate:
1. “What would guarantee this project fails completely?”
2. “What would make this application technically correct and pass all tests, yet practically useless to the user?”
3. “What architectural decisions made today will create invisible, excruciating pain 6–12 months from now?”
4. “What looks scalable at 10 items but collapses under 10,000 items, messy inputs, or concurrent traffic?”

If you cannot describe how it fails, you do not understand the architecture.

## 🔬 REALITY & CHAOS STRESS-TESTING (What-If First)
Run continuous timeline micro-simulations across the entire execution chain:

### 1. User Chaos & Psychology
- What if the user clicks twice, cancels mid-stream, or disconnects between Step 2 and Step 3?
- What if the user leaves the tab open for 3 days and comes back to stale UI state?
- What if the user is rushed, lazy, or uses the system incorrectly but confidently?

### 2. Temporal Drift & Concurrency Collisions
- What if data changes while an async background process is still running?
- What if two workers or browser tabs attempt to mutate the same resource at the exact same millisecond?
- Are payloads deep-cloned (structuredClone) before async serialization to prevent in-flight object mutation?

### 3. Semantic Validation vs. Format Illusion (AI & Data)
- What if an AI model returns valid JSON syntax, but the semantic meaning is hallucinated, harmful, or directly opposite to the user's goal?
- Is there an anti-sycophancy / Anti-Goodhart anchor (e.g., human taste or deterministic profile) to prevent drift?
- Where is partial success worse than total failure? (Is state rolled back completely to prevent dirty data?)

### 4. Kill-Chain & Silent Killer Analysis
- Silent Error Swallowing: Identify any try/catch that logs an error and continues without an explicit rollback or recovery strategy.
- Poison-Pill Loops: If an invalid payload enters a queue, will it crash the worker infinitely, or is there dead-letter isolation?
- Entropy Accumulation: Where are unbounded arrays, memory queues without drop-oldest eviction, or database tables lacking retention pruning?

## 🛑 THE 6-VECTOR AUDIT CHECKLIST
Evaluate the target implementation plan against these 6 non-negotiable vectors:
1. Inversion & Pre-Mortem: Expose the 5 to 10 most likely silent killers, deadlocks, and catastrophic failure scenarios.
2. Anti-Fragility & Self-Healing: Check for circuit breakers, backoff algorithms, atomic writes (.tmp → rename), and zero-downtime kill-switches.
3. Concurrency & State Integrity: Verify distributed locks (e.g., Mutex / DB locks), connection pool limits, IPC deadlocks, and transactional atomicity.
4. Scalability & Resource Limits: Hard memory caps, query index coverage, process RAM usage, and automated cleanup routines.
5. Real-World Goal Alignment: Ensure the architecture doesn't just "look smart" or add needless complexity, but actually delivers the user's core outcome cleanly.
6. Phase-by-Phase Verification: Concrete CLI / curl / test commands with exact assertions for every phase before proceeding.
</AUDIT_INSTRUCTIONS>

<TARGET_PLAN_LOCATION>
[plan location on disk]
</TARGET_PLAN_LOCATION>

<REQUIRED_OUTPUT_FORMAT>
Structure your final forensic audit report strictly into these 6 exact sections:

### 1. Executive Verdict & Fragility Score
- Verdict: [APPROVED / APPROVED WITH CONDITIONS / REJECTED FOR RE-ARCHITECTING]
- Fragility Score: [1 to 10] (1 = Extremely Fragile, 10 = Antifragile / Battle-Tested)
- Forensic Summary: Brutally honest 3–4 bullet points on real-world viability.

### 2. Critical Flaws & Silent Killers (Severity: High / Fatal)
- Specific failure chains, why they kill the project in production, and the exact architectural fix.

### 3. Temporal Drift, Concurrency & Edge-Case Vulnerabilities (Severity: Medium)
- Race conditions, memory leaks, missing locks, or unhandled partial tool timeouts.

### 4. User-Goal & Practicality Check ("Technically Correct vs. Practically Useless")
- Identify any over-engineered abstractions that don't serve the core goal or create friction for the end user running 20-30 niches.

### 5. The Hardened, Anti-Fragile Blueprint (Code, Schema & Config Fixes)
- Provide copy-pasteable, production-grade TypeScript/SQL/Config fixes that eliminate all discovered failure modes.

### 6. Phase-by-Phase Verification Gates
- Step-by-step shell commands, queries, and failure assertions to prove the system cannot be broken.
</REQUIRED_OUTPUT_FORMAT>

<EXECUTION_TRIGGER>
You have full access to the local filesystem.
Read the entire implementation plan from <TARGET_PLAN_LOCATION>.
Perform an exhaustive, line-by-line forensic audit against all rules in <AUDIT_INSTRUCTIONS>.
Deliver the complete, detailed 6-section report containing all flaws, code snippets, diffs, and verification gates.
</EXECUTION_TRIGGER>
```

---

## 🛠️ SEQUENTIAL EXECUTION RULES (ROUNDS 1 THROUGH 5+)

When `auto-hardened-plan` enters Phase 2:
1. **Rounds 1 through 5 (Sequential Loop):**
   - In each round $N$, spawn a brand-new subagent with Model: `flash` and 0 memory.
   - Inject the Universal Audit Protocol.
   - Subagent audits the plan file directly from disk.
   - Lead Architect reviews report, verifies code, rejects hallucinations, and patches `<target_plan.md>` on disk.
   - Plan is bumped to $v(N+1).0$ on disk.
2. **Convergence Gate:**
   - Loop runs for **at least 4 to 5 rounds**.
   - Terminates only when `Round >= 5` AND `Critical Flaws == 0`.
   - Delivers Certified Master Blueprint to user.
