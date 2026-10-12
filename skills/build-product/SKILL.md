---
name: build-product
description: >-
  Full-lifecycle autonomous product development skill. Takes ANY input — a raw idea ("build me an expense
  manager"), an architectural vision document, an existing codebase needing restructuring, or a detailed
  plan needing implementation — and dynamically orchestrates the complete pipeline. Handles: product
  research, feature/target extraction, tech stack decision, architecture, per-target implementation
  planning (anti-fragile), multi-phase auditing, code generation, code review, UI/UX design
  (ui-ux-pro-max), testing, and supervised orchestration — all in a PM-reviewed loop with
  human-in-the-loop checkpoints. Dynamically decides which agents, plans, and protocols are needed
  based on the input type and requirements. Activate with `/build [idea]`, `/product [idea]`,
  `/build [file-path]`, or `build-product [idea]`.
---

# 🏭 MASTER PRODUCT ARCHITECT (`build-product`)
### _(Full-Lifecycle Autonomous Product Factory with PM Review Loops)_

---

## 🎯 CORE PRINCIPLE: ONE SKILL TO BUILD ANYTHING

This skill is a **self-contained product development operating system.** User types ONE command — the skill handles everything else: deciding what agents to spawn, what plans to create, what to audit, what to code, when to ask the user, and when to loop back.

**Trigger:**
```
# GREENFIELD: Build from scratch
/build expense manager app
/build AI-powered resume builder with ATS scoring
/product real-time multiplayer chess game

# ARCHITECTURAL VISION: Break down existing vision into implementation plans
/build implement this [path/to/architectural-vision.md]
/build break down this architecture into executable plans [path/to/plan.md]

# CODEBASE RESTRUCTURING: Refactor or extend existing system
/build restructure the podcast pipeline to add Layer 3 intelligence
/build add real-time collaboration to the existing expense tracker

# EXISTING PLAN: Execute an already-written plan
/build execute this plan [path/to/implementation-plan.md]
```

**What Happens:** The skill activates a dynamic, loop-driven, PM-supervised pipeline that adapts to whatever the user asked for.

---

## 🔌 THE HYBRID RUNTIME ENGINE (Ruflo Progressive Enhancement)

This skill operates on an **Adaptive Multi-Engine Protocol**. It automatically probes the environment at startup:

```text
               Runtime Auto-Detection
                         │
                         ▼
        Is Ruflo MCP / Swarm Daemon Active?
               /                   \
            YES                     NO
             ▼                       ▼
    [RUFLO TURBO ENGINE]     [NATIVE DISK ENGINE]
    • AgentDB Vector Store   • Markdown Disk Ledger
    • Swarm Consensus Engine • Ephemeral Subagents
    • Inter-agent IPC Pub/Sub• 100% Zero-dependency
    • Cross-session memory   • Portable on any device
```

* **When Ruflo is installed & running (`npx ruflo mcp start`):**
  The skill leverages `ruflo-agentdb` for high-speed vector retrieval across previous projects, `ruflo-swarm` for parallel agent consensus (Raft/BFT), and memory persistence.
* **When Ruflo is NOT installed (Fresh Antigravity CLI):**
  The skill falls back to its **Native Disk Ledger Architecture** (`plans/<product>/...`). It uses pure markdown artifacts, atomic file locks, and clean subagent spawning. **It NEVER fails or throws missing tool errors.**

---

## ⚡ THE MASTER STATE MACHINE

```text
USER INPUT: "/build [any product idea]"
         │
         ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ PHASE 0: INPUT INTELLIGENCE — Detect scope, classify complexity        │
└──────────────────────────────┬──────────────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ PHASE 1: PRODUCT RESEARCH — Universal Gold-Standard Benchmarking        │
│ [PM Review Loop: Is research sufficient?]                               │
│ [HUMAN CHECKPOINT: "Yeh research sahi hai? Approve/Modify?"]           │
└──────────────────────────────┬──────────────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ PHASE 2: 3-TIER FEATURE REGISTRY — Parity, Friction-Killer, 10x Delight │
│ [PM Review Loop: Features complete? Missing gaps?]                      │
│ [HUMAN CHECKPOINT: "Yeh features approved? Add/Remove/Modify?"]        │
└──────────────────────────────┬──────────────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ PHASE 3: TECH STACK DECISION — Framework, DB, hosting, tooling         │
│ [HUMAN CHECKPOINT: "Yeh stack theek hai? Ya kuch aur chahiye?"]         │
└──────────────────────────────┬──────────────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ PHASE 4: ARCHITECTURE VISION — System topology, data model, APIs       │
│ [PM Review Loop: Architecture sound? Scalable? Secure?]                │
│ [HUMAN CHECKPOINT: "Architecture approved?"]                           │
└──────────────────────────────┬──────────────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ PHASE 5-8: PER-FEATURE IMPLEMENTATION LOOP                              │
│                                                                         │
│   FOR EACH feature in approved Feature Registry:                        │
│   ┌─────────────────────────────────────────────────────────────┐       │
│   │ 5A: Implementation Plan (anti-fragile-planning protocol)    │       │
│   │     [PM Review Loop: Plan hardened? Missing chaos vectors?] │       │
│   ├─────────────────────────────────────────────────────────────┤       │
│   │ 5B: Multi-Phase Audit (multi-phase-audit protocol)          │       │
│   │     [2-3 round adversarial audit on this feature's plan]    │       │
│   ├─────────────────────────────────────────────────────────────┤       │
│   │ 5C: Code Generation (from audited plan)                     │       │
│   │     [Write actual files to disk]                            │       │
│   ├─────────────────────────────────────────────────────────────┤       │
│   │ 5D: Code Review & Verification                              │       │
│   │     [PM reviews code, runs verification gates]              │       │
│   │     [tsc --noEmit, lint, unit tests]                        │       │
│   ├─────────────────────────────────────────────────────────────┤       │
│   │ 5E: UI/UX Design & Ergonomics (Button layout, micro-delight)│       │
│   │     [If feature has UI: design screens, action hierarchy]   │       │
│   │     [HUMAN CHECKPOINT: "UI design approved?"]               │       │
│   └─────────────────────────────────────────────────────────────┘       │
│   → Move to next feature                                                │
│                                                                         │
│ [HUMAN CHECKPOINT after all planned features:                           │
│  "All planned features implemented!"]                                   │
└──────────────────────────────┬──────────────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ PHASE 8.5: LIVING BACKLOG & CONTINUOUS INNOVATION ENGINE                │
│ [Background reflection: What can be 10x simplified? What emerged?]      │
│ [Isolated writes to living-backlog.md — ZERO context window overflow!]  │
│ [HUMAN CHECKPOINT: "Ship v1.0 now OR schedule high-impact v1.1 items?"] │
└──────────────────────────────┬──────────────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ PHASE 9: INTEGRATION & E2E VERIFICATION                                │
│ [Run full build, cross-feature tests, chaos simulation]                │
│ [HUMAN CHECKPOINT: "Product ready? Ya kuch aur chahiye?"]              │
└──────────────────────────────┬──────────────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ PHASE 10: DELIVERY & HANDOFF                                            │
│ [Final summary, run instructions, deployment guide]                    │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 🧠 THE PM REVIEW LOOP (Applied At Every Phase)

This is the universal quality pattern. Every phase output goes through this loop before proceeding:

```text
┌──────────────────────────────────────────────────────┐
│            UNIVERSAL PM REVIEW LOOP                   │
│                                                      │
│  1. Worker Agent produces output for Phase N          │
│                                                      │
│  2. PM Agent (Lead Architect) reviews:                │
│     - "Kya miss hua?"                                │
│     - "Kya improve ho sakta hai?"                    │
│     - "Kya contradiction hai previous phases se?"    │
│     - "Kya user ke goal se aligned hai?"             │
│                                                      │
│  3. IF improvements needed:                          │
│     → PM returns specific improvement instructions   │
│     → Worker incorporates improvements               │
│     → PM reviews AGAIN (Round 2)                     │
│     → Repeat until PM says "APPROVED"                │
│     → Max 3 internal rounds per phase                │
│                                                      │
│  4. IF phase has HUMAN CHECKPOINT:                   │
│     → Present output to user                         │
│     → Wait for: Approve / Modify / Reject            │
│     → If Modify: incorporate user feedback → re-loop │
│     → If Reject: restart phase from scratch          │
│     → If Approve: proceed to next phase              │
│                                                      │
│  5. Save phase output to disk:                       │
│     plans/<product>/phase-N-output.md                 │
└──────────────────────────────────────────────────────┘
```

---

## 📋 PHASE 0: INPUT INTELLIGENCE & SCOPE DETECTION

When the user triggers `/build [idea]`, the first thing to do is classify the input:

### Step 0.1: Detect INPUT MODE (Critical — Everything Depends On This)

```
MODE A: GREENFIELD BUILD
  Trigger: User gave a raw idea with no existing code or docs
  Examples: "expense manager app", "AI resume builder"
  Route: Phase 1 → 2 → 3 → 4 → 5-8 → 9 → 10 (Full Pipeline)

MODE B: SPEC BUILD
  Trigger: User gave a description with features already listed
  Examples: "expense app with auth, receipt OCR, budget forecasting"
  Route: Skip Phase 1 → Phase 2 (extract/refine) → 3 → 4 → 5-8 → 9 → 10

MODE C: ARCHITECTURAL VISION DECOMPOSITION
  Trigger: User pointed to an architectural vision document / master plan
  Examples: "/build implement this [implementation_plan.md]"
  Detection: Input is a FILE PATH to a .md document OR a long multi-section
             document describing system topology, layers, priorities, phases,
             but containing NO actual code.
  Route: Skip Phase 1, 3.
         Phase 2 becomes "IMPLEMENTATION TARGET EXTRACTION" (not feature extraction).
         Phase 4 becomes "Read & Validate Architecture" (not create it).
         Phase 5-8 loop operates on "Implementation Targets" not "Features."

MODE D: CODEBASE EXTENSION / RESTRUCTURING
  Trigger: User wants to modify or extend an existing codebase
  Examples: "add Layer 3 intelligence to the podcast pipeline",
            "restructure auth system to support multi-tenant"
  Detection: User references existing files, functions, or systems.
             An existing codebase is present in the workspace.
  Route: Run CBM/CRG analysis first to understand existing code.
         Phase 2 becomes "CHANGE TARGET EXTRACTION" (what needs to change).
         Phase 3-4 already defined by existing codebase.
         Phase 5-8 loop uses existing code context in every plan.

MODE E: PLAN EXECUTION
  Trigger: User has an already-written implementation plan, wants it coded
  Examples: "/build execute this plan [plan.md]"
  Detection: Input is a FILE PATH to a plan with specific code-level details,
             file paths, function signatures, step-by-step implementation.
  Route: Skip Phase 1-4 entirely.
         Phase 2 may run to decompose large plans into smaller chunks.
         Jump directly to Phase 5-8 implementation loop.
```

### Step 0.2: MODE C — ARCHITECTURAL VISION SPECIAL HANDLING

**This is for the scenario where user has a document like the 412-line Empire OS implementation_plan.md:**

When MODE C is detected:
1. **Read the full vision document** from disk.
2. **Extract the document's structure:**
   - What priorities/phases does it define?
   - What system components are described?
   - What dependencies exist between components?
   - What is the existing tech stack?
   - What are the cross-cutting concerns (shared schemas, APIs, data flows)?
3. **Phase 2 becomes "Implementation Target Extraction":**
   - Instead of "Auth, CRUD, Dashboard" → extract "Priority 1: Fuse Memory Layer with Pipeline",
     "Priority 2: Add semantic routing", "Priority 3: Implement feedback loop", etc.
   - Each "target" is a self-contained architectural change that can be planned and coded independently.
   - Define dependency ordering between targets.
4. **Phase 3 (Tech Stack) is SKIPPED** — the vision document already defines the stack.
5. **Phase 4 (Architecture) becomes VALIDATION** — validate the vision document's architecture
   for internal consistency, missing pieces, contradictions. Do NOT create a new architecture.
6. **Phase 5-8 loop runs identically** — but on "Implementation Targets" instead of "Features."

### Step 0.3: MODE D — CODEBASE EXTENSION SPECIAL HANDLING

When MODE D is detected:
1. **Run CBM/CRG analysis on existing codebase:**
   - `search_graph` / `get_architecture` to understand current topology
   - `get_impact_radius_tool` on files likely to change
   - `query_graph_tool` for callers/callees of affected functions
2. **Phase 2 becomes "Change Target Extraction":**
   - What files need to change?
   - What new files need to be created?
   - What existing contracts (types, schemas, APIs) are affected?
   - What tests need updating?
3. **Phase 3-4 are INHERITED** from the existing codebase (not created from scratch).
4. **Phase 5-8 loop uses existing code as context** — every plan references actual current code,
   not hypothetical architecture.

### Step 0.4: Detect Product Type (For MODE A/B Only)
```
Classify the product into one of:
  - WEB_APP (SaaS, dashboard, portal)
  - MOBILE_APP (iOS, Android, cross-platform)
  - CLI_TOOL (command-line utility)
  - API_SERVICE (backend-only API)
  - FULL_STACK (frontend + backend + database)
  - LIBRARY (npm package, SDK)
  - EXTENSION (browser extension, VS Code extension, plugin)
```

### Step 0.3: Create Product Workspace
```
Create directory structure:
plans/<product-name>/
├── research.md              (Phase 1 output)
├── feature-registry.md      (Phase 2 output)
├── tech-stack.md             (Phase 3 output)
├── architecture.md           (Phase 4 output)
├── features/
│   ├── f01-auth/
│   │   ├── plan.md           (Phase 5A output)
│   │   ├── audit-log.md      (Phase 5B output)
│   │   └── verification.md   (Phase 5D output)
│   ├── f02-core/
│   │   └── ...
│   └── ...
├── ui-designs/               (Phase 5E outputs)
├── execution-manifest.md     (Orchestration DAG)
└── progress.md               (Living status tracker)
```

---

## 🔍 PHASE 1: PRODUCT RESEARCH (Optional — Adaptive)

**When to run:** Only when `MODE A: GREENFIELD BUILD` is detected (raw idea with no details).
**When to SKIP:** MODE B, C, D, or E — user already provided features, architecture, or plan.

### Step 1.1: Ask User About Research Depth
Present user with options:
```
"[Product] ke liye research level select karo:
1. Full Research (competitors, market gaps, Reddit/forum pain points, unique differentiators)
2. Quick Feature Scan (standard features + smart AI-suggested additions)
3. Skip Research (main already features soch ke aaya hoon)"
```

### Step 1.2: Universal Gold-Standard Benchmarking & 10x Innovator (If Selected)
Spawn research & innovation subagent(s) acting as **Chief Product Officer (CPO), Lead Category Researcher & Radical UX Innovator**.

**STRICT DIRECTIVE: ZERO DOMAIN BIAS.** This protocol works for ANY product category: developer tools, system utilities, floating overlays, mobile keyboards, audio/video tools, games, or business SaaS.

The agent executes the **3-Tier Product Innovation Framework**:

#### 1. Gold-Standard Deconstruction (Category Parity)
- Automatically identify the **Top 2–3 "Category Kings"** in the world for this specific domain.
  - *Example (Developer Keyboard):* Gboard, SwiftKey, Hacker's Keyboard, Fleksy.
  - *Example (Note Taking / Second Brain):* Obsidian, Notion, Apple Notes.
  - *Example (Expense / Fintech):* Splitwise, YNAB, Copilot Money.
- **Table-Stakes Extraction:** What are the baseline features that make these tools successful?
  *(e.g. for Keyboards: Glide typing, auto-correct, clipboard history, low-latency keypress engine, haptic feedback).*

#### 2. Category Pain-Point Inversion (What Users Secretly Hate)
- Search reviews, Reddit, GitHub issues, and developer forums:
  *(e.g. for Keyboards: "Takes up half my screen", "Hard to type brackets `{ } [ ]` and arrows in terminal", "Obscures my active input field", "Too slow for quick thoughts").*
- **The Friction Inversion Test:**
  - *"User ka screen real estate aur time kahan waste hota hai?"*
  - *"Konse actions bar-bar karne padte hain jo annoying lagte hain?"*

#### 3. The 10x Layer Invention (Unfair Differentiators & Magic UX)
Invent domain-specific breakthrough interactions that make competitors feel obsolete:
- **Form-Factor Breakthroughs:** e.g., Floating minimizable bubble/overlay, dockable edge-bar, transparent glass mode.
- **Interaction Multipliers:**
  - *Gesture / Dual-State Controls:* Tap to dictate/voice record, hold/long-press to expand full keyboard palette.
  - *Developer-First Ergonomics:* Dedicated programmer symbol row, swipe-up for `{`, swipe-down for `}`, spacebar drag-to-scrub cursor, snippet expansions (e.g. `fn` → `function() {}`).
  - *Voice & Multimodal Shortcuts:* Instant push-to-talk whisper input with automatic code formatting.
- **Micro-Delight & Haptic Feel:** Tactile audio click sounds, silky spring physics, zero-lag rendering (<16ms frame budget).

### Step 1.3: PM Review Loop
PM Agent reviews the proposed feature list:
- "Kya isme Category Kings ke saare mandatory baseline features shamil hain?"
- "Kya isme kam se kam 2 aise 10x features hain jo Google/Apple ke official tools me bhi nahi hain?"
- "Kya interaction user-ergonomic hai (zero screen clutter, high efficiency)?"

### Step 1.4: HUMAN CHECKPOINT
Present competitive teardown + 10x innovation proposal to user.
"Maine [Category Kings] ke features analyze kiye hain. Yeh Table-Stakes hain, aur yeh 10x Innovations hain. Approve / Add / Modify?"
Save to: `plans/<product>/research.md`

---

## 🧩 PHASE 2: TARGET EXTRACTION & REGISTRY (Adaptive)

**This phase adapts its behavior based on the MODE detected in Phase 0:**

### MODE A/B (Greenfield / Spec Build): 3-TIER FEATURE REGISTRY

Extract atomic **product features** organized strictly by innovation hierarchy:

```markdown
| # | Feature Name | Tier | Category | Ergonomics & 10x Delight | Depends On | Complexity |
|---|---|---|---|---|---|---|
| F01 | Core Engine / Foundation | Tier 1 (Parity) | Core/Engine | Ultra-low latency state engine | None | High |
| F02 | Standard Input / Controls | Tier 1 (Parity) | UI/Input | QWERTY layout, haptics, clipboard history | F01 | Medium |
| F03 | Floating / Overlay Mode | Tier 2 (Friction-Killer) | Window/UX | Compact draggable pill, transparent overlay | F01, F02 | High |
| F04 | Tap-Voice vs Hold-Expand | Tier 3 (10x Innovation) | Interaction | Single-tap instant voice transcribe, long-press full keyboard | F02 | Medium |
| F05 | Developer Power Row | Tier 3 (10x Innovation) | Ergonomics | Swipe gestures for `{ } [ ] =>`, snippet hotkeys | F02 | Medium |
```

### MODE C (Architectural Vision): IMPLEMENTATION TARGET EXTRACTION

Read the vision document and extract **implementation targets** — NOT user-facing features, but architectural changes:

```markdown
| # | Implementation Target | Priority | System Component | Depends On | Complexity |
|---|---|---|---|---|---|
| T01 | Fuse Layer 1 Memory with Chunk 3 Pipeline | Critical | Memory + Pipeline | None | Very High |
| T02 | Add Semantic Router to Chunk 5 | Critical | Router | T01 | High |
| T03 | Implement Layer 3 Feedback Loop | High | Intelligence | T01, T02 | High |
| T04 | Wire Layer 4 Dashboard to Layer 2 Output | Medium | Dashboard + Engine | T01 | Medium |
```

Each target must reference:
- Exact sections from the vision document it implements
- Which existing files/modules are affected (if codebase exists — use CBM/CRG)
- What new files/modules need to be created
- Shared contracts with other targets

### MODE D (Codebase Extension): CHANGE TARGET EXTRACTION

Use CBM (`search_graph`, `get_architecture`) and CRG (`get_impact_radius_tool`) to identify:

```markdown
| # | Change Target | Files Affected | New Files | Impact Radius | Complexity |
|---|---|---|---|---|---|
| C01 | Refactor auth to multi-tenant | auth.ts, middleware.ts | tenant.ts | 12 dependents | High |
| C02 | Add new API routes | routes/index.ts | routes/tenant.ts | 3 dependents | Medium |
| C03 | Update database schema | migrations/ | 002_add_tenant.sql | 8 dependents | High |
```

### MODE E (Plan Execution): CHUNK DECOMPOSITION

Read the existing plan and decompose into executable chunks if it's too large for a single implementation pass:

```markdown
| # | Chunk | Lines in Plan | Estimated Files | Dependencies |
|---|---|---|---|---|
| K01 | Database Layer | Plan L10-L85 | 3 files | None |
| K02 | API Routes | Plan L86-L150 | 4 files | K01 |
| K03 | Frontend Components | Plan L151-L280 | 6 files | K02 |
```

### Step 2.2: Define Shared Contracts (ALL MODES)
Before any target gets its own plan, define the SHARED contracts that ALL targets must respect:

```markdown
## Shared Contracts (Adapted to Mode)

### For Greenfield (MODE A/B):
- Database schema contracts (table structures, FK conventions, ID types)
- API patterns (auth, error format, pagination)
- Shared type definitions

### For Architectural Vision (MODE C):
- Cross-layer interface contracts (what Layer 1 exposes to Layer 2)
- Data flow contracts (message formats between components)
- Existing schema constraints that new targets must not break

### For Codebase Extension (MODE D):
- Existing type contracts (from source code — verify with CBM)
- Existing API contracts (from routes — verify with CRG)
- Database migration ordering constraints

### For Plan Execution (MODE E):
- Contracts already defined in the plan — extract and validate them
```

**This prevents Target A's agent from contradicting Target B's assumptions.**

### Step 2.3: PM Review Loop
PM Agent reviews targets:
- "Target scope too big? Should be split?"
- "Missing obvious targets? (Error handling? Logging? Migration?)"
- "Dependencies make sense? No circular deps?"
- "Shared contracts cover all cross-cutting concerns?"

### Step 2.4: HUMAN CHECKPOINT
Present Target Registry to user. Wait for approval.
User can: Add targets, remove targets, change priorities, modify contracts.
Save to: `plans/<project>/target-registry.md`

---

## 🔧 PHASE 3: TECH STACK DECISION

### Step 3.1: Recommend Stack Based on Product Type

Dynamically recommend based on product classification:

```
IF WEB_APP or FULL_STACK:
  → Frontend: React/Next.js + TypeScript + Tailwind
  → Backend: Node.js/Express or Next.js API routes
  → Database: PostgreSQL (Neon) or SQLite
  → Auth: NextAuth.js or custom JWT
  → Hosting: Vercel / Railway / Render

IF CLI_TOOL:
  → Language: TypeScript + Node.js (or Rust if performance-critical)
  → Package: npm publishable
  → Testing: Vitest

IF API_SERVICE:
  → Runtime: Node.js + Express + TypeScript
  → Database: PostgreSQL
  → Docs: OpenAPI/Swagger

IF MOBILE_APP:
  → Framework: React Native + Expo
  → Backend: Same as API_SERVICE
```

### Step 3.2: HUMAN CHECKPOINT
```
"Recommended tech stack:
- Frontend: Next.js 14 + TypeScript + Tailwind CSS
- Backend: Next.js API Routes + Prisma ORM
- Database: PostgreSQL (Neon serverless)
- Auth: NextAuth.js v5
- Testing: Vitest + Playwright

Approve? Ya kuch change karna hai?"
```

User can override any part. Save to: `plans/<product>/tech-stack.md`

---

## 🏗️ PHASE 4: ARCHITECTURE VISION

### Step 4.1: Generate System Architecture
Based on approved features + tech stack, generate:

1. **System Topology Diagram** (Mermaid)
2. **Data Model / ERD** (all tables, relationships, indexes)
3. **API Route Map** (all endpoints, methods, auth requirements)
4. **Component Tree** (if frontend exists — page → layout → components)
5. **State Management Strategy** (what's server state vs client state)
6. **File/Folder Structure** (exact project directory tree)

### Step 4.2: PM Review Loop
PM Agent validates:
- "Data model normalized? No redundant tables?"
- "API routes RESTful and consistent?"
- "Component tree matches feature list? Nothing orphaned?"
- "Security: Auth on all protected routes?"

### Step 4.3: HUMAN CHECKPOINT
Present architecture to user. Save to: `plans/<product>/architecture.md`

---

## 🔄 PHASE 5-8: THE PER-FEATURE IMPLEMENTATION LOOP

**This is the core engine.** For EACH feature in the approved Feature Registry (in dependency order):

### 5A: IMPLEMENTATION PLAN (Self-Contained Anti-Fragile Planning Protocol)

For the current target, generate a hardened implementation plan. This is the COMPLETE protocol — no external skills needed:

**PERSONA:** Act as Lead SRE + Principal Distributed Systems Architect + Inversion-Thinking Specialist. The production environment is hostile: networks disconnect mid-write, users double-click, AI returns semantic garbage, child processes leak memory, race conditions happen at millisecond precision.

**STEP 0: GROUND-TRUTH INVESTIGATION (If Codebase Exists)**
If modifying an existing codebase (MODE C/D), investigate BEFORE planning:
- Locate target symbols: `search_graph(name_pattern=".*<target>.*")` or read source files directly
- Trace inbound callers: `trace_path(function_name="...", direction="inbound")`
- Calculate blast radius: `get_impact_radius_tool(changed_files=[...], max_depth=2)`
- If CBM/CRG MCP tools are unavailable: grep the codebase manually with `Select-String` or `grep`
- **STRICT: Never guess file contents or function signatures. Verify from source.**

**STEP 1: INVERSION PRE-MORTEM (Design Backwards From Disaster)**
Before writing any code, simulate:
1. **6-Month Crash Simulation:** Feature deployed 6 months ago. DB corrupted, server OOM, user data wiped. What caused it? Build preventions into the plan.
2. **"Technically Correct But Useless" Test:** What makes this pass all tests yet fail in real workflows?
3. **Scale Inversion:** What looks clean at 5 items but crashes at 5,000?
4. **Nuke Over Poison:** If a step fails, guarantee clean rollback — never save partial/poisoned data.

**STEP 2: 5 CHAOS VECTORS ANALYSIS (Every Code Block Must Address These)**

| # | Chaos Vector | What To Check |
|---|---|---|
| 1 | **Concurrency, Locks & Temporal Drift** | `structuredClone` before async ops? Atomic DB transactions (`BEGIN/COMMIT/ROLLBACK`)? Row locks (`FOR UPDATE SKIP LOCKED`)? Stale-closure protection? |
| 2 | **Process Lifecycle & Resource Entropy** | Dual-tier timeouts (heartbeat stall + wall-clock cap)? Force-kill escalation (`.unref()`)? IPC/event listener teardown in `finally` blocks? |
| 3 | **Semantic Validation vs Format Illusion** | Never trust raw LLM output even if JSON parses. Semantic validation? Circuit breaker for bad output? Dead-letter isolation? |
| 4 | **Client State Isolation & Navigation Safety** | Context switch resets in-memory IDs? React `isMountedRef` guards? Adaptive exponential backoff on polling? |
| 5 | **Self-Documenting Resilience (Chesterton's Fence)** | Defensive logic has inline comments explaining the specific catastrophe being prevented? |

**STEP 3: REQUIRED PLAN OUTPUT FORMAT**

```markdown
# [Target Name] — Hardened Implementation Plan

## 1. Executive Architecture & Evidence
- Target files: CREATE, MODIFY, or REWRITE (with estimated LOC)
- Ground truth: Symbols verified, callers mapped, blast radius computed
- Rationale: Why this design prevents technical debt

## 2. Forensic Pre-Mortem & Inversion Matrix
| # | Realistic Failure Scenario | Root Cause | Built-In Defense |
|---|---|---|---|

## 3. Concurrency, State Invariants & Failure Modes
- Locking, transaction boundaries, memory isolation rules
- Dual-tier timeout specs

## 4. File-by-File Hardened Code Blueprints
**CRITICAL: 100% complete, copy-pasteable code. ZERO pseudocode. ZERO TODOs.
Include exact imports and defensive guards.**

### [ACTION: NEW / MODIFY] `path/to/file.ts`
(Complete production-grade code here)

## 5. Cross-Target & Database Alignment
- Column type verification
- Backward compatibility

## 6. Verification Gates
### Gate 1: Type & Syntax (`npx tsc --noEmit` → exit 0)
### Gate 2: Happy Path (command + expected output)
### Gate 3: Chaos Test (simulate failure, assert recovery)
```

**PM Review Loop on Plan:**
- "Plan covers all 5 chaos vectors?"
- "Code blueprints complete — no missing imports, no skipped error handling?"
- "Shared contracts respected — types match target-registry.md?"

Save to: `plans/<project>/targets/tXX-<name>/plan.md`

### 5B: ADVERSARIAL AUDIT (Self-Contained Multi-Phase Audit Protocol)

Run **2-3 rounds** of adversarial audit on this target's plan. This is the COMPLETE audit protocol — no external skills needed:

**AUDITOR PERSONA:** Forensic Failure Analyst. You are NOT here to validate. You are here to DESTROY weak thinking before it becomes code.

**FOR EACH AUDIT ROUND (Fresh Subagent, Model: flash, 0 Prior Memory):**

1. **Subagent reads the plan file from disk** (the .md saved in Step 5A).

2. **Executes The Inversion Directive:**
   - "What would GUARANTEE this plan fails completely?"
   - "What would make this technically correct but practically useless?"
   - "What decisions today create invisible pain 6-12 months from now?"
   - "What looks scalable at 10 items but collapses at 10,000?"

3. **Runs Reality & Chaos Stress-Testing:**
   - **User Chaos:** Double-click, cancel mid-stream, stale tab for 3 days
   - **Temporal Drift:** Data changes during async processing, concurrent mutations
   - **Semantic Illusion:** AI returns valid JSON with hallucinated content
   - **Silent Killers:** `try/catch` that logs but doesn't rollback, unbounded arrays, poison-pill loops

4. **Evaluates Against 6-Vector Audit Checklist:**
   1. Inversion & Pre-Mortem (5-10 likely silent killers)
   2. Anti-Fragility & Self-Healing (circuit breakers, atomic writes, kill-switches)
   3. Concurrency & State Integrity (distributed locks, connection pool limits, tx atomicity)
   4. Scalability & Resource Limits (memory caps, index coverage, cleanup routines)
   5. Real-World Goal Alignment (no needless complexity, delivers core outcome)
   6. Phase-by-Phase Verification (concrete CLI commands with assertions)

5. **Reports Flaws in this EXACT format:**
   ```
   ### Flaw #N: [Title]
   - **Severity:** FATAL / HIGH / MEDIUM
   - **Catastrophe Scenario:** Exact real-world sequence leading to failure
   - **Vulnerable Snippet:** Exact 2-5 lines from the plan that fail (with line numbers)
   - **Surgical Patch:** Minimal drop-in replacement fixing the issue
   - **Why This Matters:** Architectural opinion on downstream regression
   ```

6. **ANTI-HALLUCINATION GATES:**
   - Gate 1: Every flaw MUST cite exact line range + code snippet from the plan file
   - Gate 2: Lead Architect (you) physically verifies each flaw against the actual plan
   - Gate 3: Only apply patches that are verified as real. Reject speculative flaws.

7. **Lead Architect applies verified patches, bumps plan version.**

**CONVERGENCE:** Stop when critical flaws = 0 after minimum 2 rounds.

Save to: `plans/<project>/targets/tXX-<name>/audit-log.md`

### 5C: CODE GENERATION

From the audited plan, generate actual code files:
1. Read the audited plan from disk.
2. Create each file specified in the plan.
3. Write 100% complete, production-grade code — every import, every type, every error handler.
4. Respect shared contracts from `target-registry.md` and `architecture.md`.
5. Include inline comments explaining defensive logic (Chesterton's Fence — explain WHY, not WHAT).

### 5D: CODE REVIEW & VERIFICATION

**PM Agent reviews generated code:**
1. Run verification gate commands from the plan (e.g., `npx tsc --noEmit`).
2. Check: Does code match the plan exactly?
3. Check: Are shared contracts (types, API patterns, DB schema) respected?
4. Check: Missing error handling? Missing null checks? Missing cleanup?

**If verification gate fails:**
- Agent gets 1 surgical fix attempt.
- If still fails → flag for human intervention.

Save to: `plans/<project>/targets/tXX-<name>/verification.md`

### 5E: UI/UX DESIGN (If Target Has UI — Self-Contained Protocol)

**When to activate:** Only if the current target involves user-facing screens/components.
**When to SKIP:** Backend-only targets, API-only targets, CLI tools.

**Self-Contained UI/UX Design Protocol:**

1. **Screen Inventory & Action Hierarchy:** List every screen/page/modal this target needs.
   - **The 1-Primary Action Rule:** Every screen has ONLY ONE primary bright CTA button (e.g. `+ Log Expense` or `Update Balance`). Secondary actions are subtle ghost/outline buttons. Destructive actions are tucked inside menus or require explicit safety confirmation.
   - **Thumb-Zone & Ergonomics:** On mobile, primary triggers sit in the lower 30% of the viewport (Floating Action Button or bottom bar) for effortless 1-handed logging.
2. **Component Breakdown:** For each screen, define:
   - Layout structure (grid, flex, sidebar+main, responsive drawer)
   - Component hierarchy (page → section → card → interactive widget → input)
   - Responsive behavior (mobile/tablet/desktop breakpoints)
3. **Power-User Speed & Friction Killers:**
   - Global Hotkeys: `Cmd+K` (Command Palette), `N` (New Entry), `Esc` (Dismiss/Cancel).
   - Inline Spreadsheet Editing: Double-click to edit numbers directly in tables without opening heavy modal forms.
   - Non-blocking Optimistic UI: Screen updates immediately with animated revert toast if network fails.
4. **State Coverage & Micro-Interactions:**
   - Loading state: Smooth animated shimmer skeletons (never raw blank screens or clunky spinners).
   - Empty state: Meaningful graphic/icon + 1-click starter template (e.g., "Add your first bank account in 10 seconds").
   - Micro-Delight Animations: Spring transitions (Framer Motion), counter rollups on numbers, soft badge pulses for status changes.
5. **Design Tokens:**
   - Coherent color palette (e.g. Modern Dark Slate with Vibrant Accents: Emerald `#10b981` for inflows/assets, Rose `#f43f5e` for expenses/debts).
   - Clean typographic scale with high legibility monospace numbers for currency (`font-mono tabular-nums`).
6. **Accessibility (Non-Negotiable):**
   - Full keyboard navigation across all inputs and modals.
   - High contrast ratios (WCAG AA), accessible ARIA labels.
7. **If `ui-ux-pro-max` skill is available:** Defer to it for advanced design system data (79 styles, 192 palettes, 74 font pairings). If unavailable, use the self-contained protocol above.

**HUMAN CHECKPOINT:**
Show UI design / component specifications + button layout to user.
"Yeh screens sahi hain? Layout approved? Colors aur buttons theek?"

---

## 📊 PROGRESS TRACKING (Living Document)

Throughout execution, maintain a living `plans/<product>/progress.md`:

```markdown
# 🏭 Product Build Progress: [Product Name]

## Status: Phase 5 — Feature Implementation Loop

| Feature | Plan | Audit | Code | Review | UI | Status |
|---|---|---|---|---|---|---|
| F01: Auth | ✅ v3.0 | ✅ 2 rounds | ✅ Written | ✅ Passed | N/A | ✅ DONE |
| F02: Core CRUD | ✅ v2.0 | ✅ 2 rounds | 🔄 In Progress | ⬜ Pending | ⬜ Pending | 🔄 ACTIVE |
| F03: AI Feature | ⬜ Pending | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ QUEUED |
| F04: Dashboard | ⬜ Pending | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ QUEUED |

## Completed Phases
- [x] Phase 0: Input Intelligence (Complexity: FULL_BUILD, Type: WEB_APP)
- [x] Phase 1: Research (Approved by user)
- [x] Phase 2: Features (9 features, 4 MVP, 3 Important, 2 Nice-to-have)
- [x] Phase 3: Tech Stack (Next.js + PostgreSQL + Tailwind)
- [x] Phase 4: Architecture (Approved by user)
- [ ] Phase 5-8: Feature Loop (2/9 complete)
- [ ] Phase 9: Integration Testing
- [ ] Phase 10: Delivery
```

---

## 🚀 PHASE 8.5: LIVING BACKLOG & CONTINUOUS INNOVATION ENGINE

**The Problem It Solves:**
In the beginning of a build, no one can predict every killer feature. As code is written and schemas come to life, new breakthrough ideas emerge. However, modifying in-flight code mid-stride causes **Context Window Collapse**, infinite loops, and broken contracts.

**The Solution: The Isolated Living Backlog Protocol**

While features are implemented and audited in Phase 5–8, a background reflection step runs:
- **Zero Token Pollution:** In-flight worker contexts remain 100% focused on their current target.
- **Isolated Storage:** New ideas are written strictly to `plans/<product>/living-backlog.md`.

### Step 8.5.1: The 3 Continuous Reflection Vectors

For every completed feature, the PM Agent runs a background reflection check:

1. **Ruthless Simplification & Pruning (Anti-Overengineering):**
   - *"Kya is feature ne unnecessary complexity add ki?"*
   - *"Kya do separate forms/modals ko merge karke 1 seamless interaction banaya ja sakta hai?"*
   - *"What can we DELETE to make the user workflow 2x faster?"*

2. **Emergent Compound Features (What becomes possible now?):**
   - Once underlying tables and APIs exist, high-leverage features become trivial to add.
   - *Example:* Once snapshot balances exist, an "Automated Runway Calculator" or "Networth Velocity Badge" only requires a 15-line SQL query!

3. **Power-User Ergonomics & Micro-Delight:**
   - What keyboard shortcuts (`Cmd+K`, hotkeys), haptic audio feedback, or floating widgets would elevate this from a "good app" to an "addictive tool"?

### Step 8.5.2: Living Backlog File Format (`plans/<product>/living-backlog.md`)

```markdown
# 💡 Living Innovation Backlog: [Product Name]

## Discovered During Build (Pending Review)

| # | Innovation / Improvement | Origin Phase | Impact | Complexity | Rationale |
|---|---|---|---|---|---|
| B01 | 1-Click Runway Estimator | After F02 (Ledger) | High | Low | Core math already exists in snapshots |
| B02 | Voice Quick-Transcribe | After F03 (UI) | High | Medium | Web Speech API requires zero backend |
| B03 | Fuse Accounts & Settings Drawers | Simplification | Medium | Low | Reduces navigation friction by 50% |
```

### Step 8.5.3: Ruflo Multi-Session Sync (If Ruflo is Active)
- If Ruflo MCP is detected (`mcp__plugin_ruflo-core...` or `ruflo-agentdb`):
  Auto-sync backlog insights into Ruflo's vector memory (`memory_store`) under tag `#innovation-patterns`.
  When building *future* products, the agent can retrieve: *"What UX innovations worked best in previous apps?"*
- If Ruflo is not active: File stays safely on disk in `living-backlog.md`. Zero errors.

### Step 8.5.4: THE VERSIONED SPRINT CHECKPOINT (Human Gate)

When all Phase 5–8 planned features are complete, BEFORE Phase 9 integration testing, the PM Agent presents the **Living Innovation Review**:

```text
"🎉 All v1.0 planned features are successfully implemented and verified!

During development, the Continuous Innovation Thinker discovered 3 high-impact ideas in `living-backlog.md`:
1. [B01] 1-Click Runway Estimator (Leverages snapshot ledger already built)
2. [B02] Voice Quick-Transcribe (Frictionless input)
3. [B03] Merge Accounts & Settings (Pruning unnecessary screens)

Select next step:
[1] SHIP v1.0 NOW (Proceed directly to Phase 9 E2E testing & delivery)
[2] IMPLEMENT SPRINT v1.1 (Pull selected backlog items into implementation loop right now)
[3] SAVE FOR LATER (Keep backlog documented in plans/ for future sessions)"
```

---

## 🧪 PHASE 9: INTEGRATION & E2E VERIFICATION

After ALL features are implemented:

1. **Cross-Feature Integration Test:**
   - Do features work together? (Auth + CRUD + AI + Dashboard)
   - Shared contracts intact? No type mismatches?
   - Database migrations run clean from scratch?

2. **Build Verification:**
   ```bash
   npm run build          # Must exit 0
   npx tsc --noEmit       # Must exit 0
   npm run test           # Must pass all tests
   npm run lint           # Must pass
   ```

3. **Chaos Simulation (If Applicable):**
   - What if database is down?
   - What if AI API returns garbage?
   - What if user double-clicks submit?

4. **HUMAN CHECKPOINT:**
   "Sab features integrated. Build passing. Tests green. Kuch aur features add karne hain ya deliver karein?"
   - If user says "aur features chahiye" → Loop back to Phase 2
   - If user says "deliver karo" → Phase 10

---

## 📦 PHASE 10: DELIVERY & HANDOFF

1. **README.md Generation:**
   - Project description, features list, tech stack
   - Setup instructions (clone, install, env vars, run)
   - API documentation (if applicable)

2. **Deployment Guide:**
   - Environment variables needed
   - Database setup commands
   - Build & deploy commands for target platform

3. **Final Summary Artifact:**
   - What was built (feature count, file count, LOC)
   - Architecture diagram
   - Known limitations / future improvements
   - Link to all plan files in `plans/` directory

---

## 🔧 DYNAMIC AGENT SELECTION (How The Skill Adapts)

The skill does NOT use a fixed set of agents for every product. It dynamically selects based on what's needed:

```
ALWAYS ACTIVE:
├── PM Agent (Lead Architect) — Reviews every output
├── Planning Agent — Creates implementation plans (anti-fragile-planning)
└── Code Agent — Writes actual code files

ACTIVATED IF NEEDED:
├── Research Agent — Only if user wants market research (Phase 1)
├── UI/UX Agent (ui-ux-pro-max) — Only if product has frontend
├── Database Agent — Only if product uses a database
├── API Agent — Only if product has API endpoints
├── Audit Agent (multi-phase-audit) — For each feature plan
├── Security Agent — If product handles auth, payments, or sensitive data
├── Testing Agent — For writing test files
└── DevOps Agent — If deployment config needed (Docker, CI/CD)
```

### How Dynamic Selection Works:
After Phase 2 (Feature Extraction), analyze the feature list:
```
IF any feature involves user authentication → activate Security Agent
IF any feature has UI screens → activate UI/UX Agent (ui-ux-pro-max)
IF any feature involves database operations → activate Database Agent
IF any feature involves external APIs → activate API Agent
IF product type = WEB_APP or FULL_STACK → activate all frontend agents
IF product type = CLI_TOOL → skip UI/UX, skip frontend agents
IF product type = API_SERVICE → skip frontend, activate API docs agent
```

---

## 🛡️ ANTI-HALLUCINATION & QUALITY GATES

### Gate 1: Physical Evidence
Every audit finding MUST cite exact file path + line range + code snippet. Ungrounded speculation is auto-rejected.

### Gate 2: Shared Contract Enforcement
Before ANY feature's code is generated, verify its plan references and respects:
- Database schema from `architecture.md`
- API patterns from `architecture.md`
- Shared type definitions from `architecture.md`
If a plan contradicts the architecture → REJECT, fix before proceeding.

### Gate 3: Build Gate
After EACH feature's code is written: run `tsc --noEmit` (or equivalent). If it fails → fix before next feature.

### Gate 4: Human Checkpoint Gate
At every HUMAN CHECKPOINT, execution STOPS until user responds. Never assume approval.

---

## 🚀 EXECUTION TRIGGER

When `/build [idea]` is received:

1. Read this entire skill.
2. Execute Phase 0 to classify input.
3. Create product workspace directory.
4. Initialize `progress.md`.
5. Execute phases sequentially, respecting:
   - PM Review Loops (internal quality)
   - Human Checkpoints (user approval)
   - Conditional phase skipping (based on complexity level)
   - Dynamic agent selection (based on product type)
6. At every HUMAN CHECKPOINT, present output as an artifact and wait.
7. After user approval, save to disk and proceed.
8. If user says "stop" or "pause" at any checkpoint, save all progress to disk. The user can resume later by pointing to the `plans/<product>/` directory.

### Resumption Support:
```
/build resume plans/expense-manager/
```
→ Agent reads `progress.md`, detects where execution stopped, and resumes from that phase.
