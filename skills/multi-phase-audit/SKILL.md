---
name: multi-phase-audit
description: >-
  Autonomous multi-round forensic audit pipeline powered 100% by the Universal Anti-Fragile Forensic Audit Protocol.
  Dispatches brand-new, fresh-eyes Flash subagents one after another in a sequential loop (running at least 5 rounds).
  Each subagent executes the exact, stack-agnostic Anti-Fragile Audit prompt directly against the physical file on disk,
  delivering comprehensive flaw reports with complete code fixes and physical line citations.
  Activate whenever the user writes `multi-phase-audit`, `/multi-phase-audit`, `/deep-audit`, or requests a
  forensic failure audit on an implementation plan or codebase.
---

# 🧠 MULTI-PHASE FORENSIC AUDIT PIPELINE (`multi-phase-audit`)
### _(Universal Stack-Agnostic Engine × 5-Round Sequential Fresh-Eyes Swarm)_

---

## 🎯 CORE ENGINE ARCHITECTURE

This skill is **100% universal and stack-agnostic**. It removes all narrow, hardcoded technology silos (e.g. forced Database or Network checks) and relies entirely on your **Universal Anti-Fragile Forensic Failure Audit Protocol**.

It runs an automated, sequential **5-Round Adversarial Gauntlet**:
Every subagent is spawned **one after another with zero prior chat memory**, executes your exact Universal Audit Prompt against the physical file on disk, and reports back to the Lead Architect who patches the file before spawning the next round.

```text
                                  TARGET PLAN
                                (on physical disk)
                                        │
                                        ▼
    ┌────────────────────────────────────────────────────────────────────────┐
    │ ROUND 1: Fresh Subagent 1 (Model: Flash, 0 Memory)                     │
    │ • Executes Universal Anti-Fragile Audit Prompt                         │
    │ • Discovers foundational inversion & failure modes                     │
    │ • Lead Architect verifies physical code & patches plan on disk (v2.0)  │
    └───────────────────────────────────┬────────────────────────────────────┘
                                        │
                                        ▼
    ┌────────────────────────────────────────────────────────────────────────┐
    │ ROUND 2: Fresh Subagent 2 (Brand New Process, 0 Memory)                │
    │ • Audits updated v2.0 plan directly from disk                          │
    │ • Hunts deep temporal drift, edge-cases, and secondary failure chains  │
    │ • Lead Architect verifies physical code & patches plan on disk (v3.0)  │
    └───────────────────────────────────┬────────────────────────────────────┘
                                        │
                                        ▼
    ┌────────────────────────────────────────────────────────────────────────┐
    │ ROUND 3: Fresh Subagent 3 (Brand New Process, 0 Memory)                │
    │ • Audits updated v3.0 plan directly from disk                          │
    │ • Stress-tests user chaos, semantic illusions & resource limits        │
    │ • Lead Architect verifies physical code & patches plan on disk (v4.0)  │
    └───────────────────────────────────┬────────────────────────────────────┘
                                        │
                                        ▼
    ┌────────────────────────────────────────────────────────────────────────┐
    │ ROUND 4: Fresh Subagent 4 (Brand New Process, 0 Memory)                │
    │ • Audits updated v4.0 plan directly from disk                          │
    │ • Ruthless anti-overengineering & practical real-world goal check      │
    │ • Lead Architect verifies physical code & patches plan on disk (v5.0)  │
    └───────────────────────────────────┬────────────────────────────────────┘
                                        │
                                        ▼
    ┌────────────────────────────────────────────────────────────────────────┐
    │ ROUND 5: Fresh Subagent 5 (Final SRE Gatekeeper, 0 Memory)             │
    │ • Audits updated v5.0 plan directly from disk                          │
    │ • Verifies complete phase verification gates & proof assertions        │
    │ • Lead Architect applies final surgical polish                         │
    └───────────────────────────────────┬────────────────────────────────────┘
                                        │
                       CONVERGENCE VERIFICATION:
                At least 5 Full Rounds Completed AND 0 Critical Flaws
                                        │
                                        ▼
                     ┌─────────────────────────────────────┐
                     │ 🛡️ FINAL CERTIFIED MASTER BLUEPRINT │
                     └─────────────────────────────────────┘
```

---

## 🛑 THE 3 ANTI-HALLUCINATION GATES (Preventing AI Echo Chambers)

### Gate 1: Mandatory Physical Evidence Citation
A subagent CANNOT simply claim "this might fail" or make vague assumptions.
Every reported flaw MUST provide:
1. **Target File Path** (relative to workspace root).
2. **Exact Line Range** (`#L123-L145`).
3. **Physical Code Snippet** extracted via `view_file` or AST query.
4. **Deterministic Failure Mechanism** (how and why it breaks in reality).
*If an auditor cannot cite exact lines of physical code, the finding is automatically tagged `REJECTED: UNGROUNDED_SPECULATION` and discarded.*

### Gate 2: Lead Architect Verification & Rebuttal Protocol
Before applying any patch to `<target_plan.md>`, the Lead Architect MUST verify the claim against physical disk:
- Does the cited code actually exist?
- Does the system actually suffer from the claimed failure mode?
- If the auditor hallucinated an issue (e.g. assuming a database in an offline CLI or network in a canvas math engine), the Lead Architect records an explicit `SRE_REBUTTAL: IRRELEVANT_ABSTRACTION` in the Convergence Log. **No imaginary code is patched.**

### Gate 3: Minimum 5-Round Termination Condition
The loop will **NEVER terminate prematurely**:
1. It MUST complete **at least 5 distinct sequential subagent rounds** (Round 1 through Round 5).
2. At Round 5, if and only if **Critical/Fatal Flaws == 0** and all verified findings have physical patches on disk, the Lead Architect certifies the plan.
3. If new critical flaws are uncovered in Round 5, execution continues into Round 6 until complete zero-defect convergence is achieved.

---

# 📜 THE UNIVERSAL PROTOCOL (INJECTED INTO EVERY SUBAGENT)
### _(Executed by Subagents 1, 2, 3, 4, 5+ one after another)_

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

You must run continuous timeline micro-simulations across the entire execution chain:

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
3. Concurrency & State Integrity: Verify distributed locks (e.g., PostgreSQL Advisory Locks / Mutex), connection pool limits, IPC message deadlocks, and transactional atomicity.
4. Scalability & Resource Limits: Hard memory caps (MAX_QUEUE_SIZE), query index coverage (composite/partial indexes), forked process RAM usage, and automated cleanup routines.
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
Perform an exhaustive, line-by-line forensic audit against all rules in <AUDIT_INSTRUCTIONS> and generate the report strictly following <REQUIRED_OUTPUT_FORMAT>.
Deliver the complete, detailed 6-section report containing all flaws, code snippets, diffs, and verification gates without omitting any detail.
</EXECUTION_TRIGGER>
```

---

## 🛠️ SEQUENTIAL EXECUTION RULES (ROUNDS 1 THROUGH 5+)

When `multi-phase-audit <target_plan.md>` is executed:

1. **Round 1 (Foundational Failure Audit):**
   - Spawn Subagent 1 with Model: `flash`, 0 memory.
   - Subagent reads `<target_plan.md>` from disk and audits using the Universal Protocol.
   - Lead Architect reviews full report, verifies against physical disk, rejects hallucinations, and applies surgical code/schema patches to `<target_plan.md>`. Version bumped to `v2.0`.
2. **Round 2 (Temporal Drift & Race Condition Audit):**
   - Spawn Subagent 2 (brand-new process, 0 memory).
   - Audits updated `v2.0` plan from disk.
   - Lead Architect reviews report, verifies code, and applies patches. Version bumped to `v3.0`.
3. **Round 3 (Chaos, Scale & AI Poison Pill Audit):**
   - Spawn Subagent 3 (brand-new process, 0 memory).
   - Audits updated `v3.0` plan from disk.
   - Lead Architect reviews report, verifies code, and applies patches. Version bumped to `v4.0`.
4. **Round 4 (Anti-Overengineering & Practicality Audit):**
   - Spawn Subagent 4 (brand-new process, 0 memory).
   - Audits updated `v4.0` plan from disk. Prunes unnecessary complexity while maintaining safety.
   - Lead Architect reviews report, verifies code, and applies patches. Version bumped to `v5.0`.
5. **Round 5 (Final SRE Gatekeeper Audit):**
   - Spawn Subagent 5 (brand-new process, 0 memory).
   - Audits updated `v5.0` plan from disk. Evaluates all Verification Gates and Assertions.
   - Lead Architect applies final fixes.
   - **Check Termination Gate:** If `Critical Flaws == 0` AND Round $\ge 5$, terminate loop and present Certified Master Blueprint. Otherwise, continue to Round 6.
