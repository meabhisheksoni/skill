---
name: prompt-enhancer
description: Ground, translate, and enhance raw user ideas, Hindi/Hinglish requests, or vague prompts into structured, production-grade prompts for AI coding agents. Uses CBM (codebase-memory-mcp) and CRG for AST symbol/path grounding without editing code. Activate on /prompt-enhancer, /enhance, prompt-enhancer, or when asked to refine, translate, or enhance a prompt.
---

# 🪄 Prompt Enhancer Skill
### _(Codebase-Grounded, English-Structured, Zero-Code-Modification Prompt Architect)_

---

## 🎯 Purpose & Non-Negotiables

The sole mission of this skill is to take any raw, rough, informal, Hindi, Hinglish, or underspecified user prompt and transform it into a **flawless, structured, SRE-grade English prompt** that any AI agent (Antigravity, Cursor, Claude Code, Codex) can execute with zero ambiguity and zero hallucinations.

### 🚫 STRICT BOUNDARIES:
1. **ZERO CODE CHANGES:** You are strictly forbidden from modifying any project files, creating feature code, or running build commands. This is a read-only, cognitive reasoning and prompt-synthesis skill.
2. **ZERO BLIND FILE SCANNING:** Do not dump or view dozens of source files. When referencing code, rely on **CBM (codebase-memory-mcp)** to locate symbols and verify exact signatures without cluttering context.
3. **GROUNDED IN REALITY:** Never hallucinate filenames, package names, or APIs. Ground every file path and symbol in the actual repository before placing it in the enhanced prompt.

---

## 🔄 The 4-Phase Prompt Enhancement Workflow

```
┌────────────────────────────────────────────────────────┐
│ Phase 1: Ingest & De-construct (Intent + Constraints)   │
├────────────────────────────────────────────────────────┤
│ Phase 2: CBM AST Grounding (Symbols + Files + Callee)  │
├────────────────────────────────────────────────────────┤
│ Phase 3: Ambiguity & Clarification Gate (If Needed)     │
├────────────────────────────────────────────────────────┤
│ Phase 4: Synthesize Production-Ready Enhanced Prompt    │
└────────────────────────────────────────────────────────┘
```

---

### Phase 1: Ingest & Intent De-construction
* **Language Translation:** If the input is in Hindi, Hinglish, or fragmented slang, translate the core technical intent into precise, professional English.
* **Extract 4 Dimensions:**
  1. **Primary Goal:** What is the user actually trying to achieve?
  2. **Trigger/Surface:** Where in the app/system does this happen (UI, service, export, database, overlay)?
  3. **Data Shape:** What data is consumed, transformed, or emitted?
  4. **Implicit Expectations:** What did the user not mention explicitly (e.g. error handling, sorting, backward compatibility, state management)?

---

### Phase 2: CBM / CRG Grounding (Zero Blind Scan)
Before drafting the prompt, locate the exact anchors in the repository using CBM:
* Run `search_code` or `search_graph` for 1–2 key terms mentioned by the user (e.g. `ShareScreen`, `TodoViewModel`, `ExportHistoryItem`).
* Identify:
  * Exact relative file paths (e.g. `app/src/main/java/com/example/monday/ShareScreen.kt`).
  * Exact functions, classes, or state flows involved.
  * Architectural boundaries (Compose UI vs ViewModel vs Repository vs Native Android utils).

---

### Phase 3: Ambiguity & Clarification Gate
If the user's request has **multiple viable architectural forks** or an **unresolved conflict**:
* **DO NOT GUESS.**
* Ask 1–2 targeted, crystal-clear clarifying questions (in simple Hindi/Hinglish if the user initiated in Hindi/Hinglish).
* Example:
  > *"Aap chahte hain ki yeh setting locally phone me save ho (Preferences), ya har bar default state me open ho?"*
* Once the user clarifies (or if the request is already unambiguous), proceed immediately to Phase 4.

---

### Phase 4: Synthesize the Final Enhanced Prompt

Format the enhanced prompt in a single, clean, copy-pasteable Markdown code block following this exact template:

````markdown
```markdown
# Task: [Clear, Concise Action Title in English]

## 1. Objective & User Intent
[2-3 declarative sentences explaining exactly what must be built, modified, or fixed, written in clear professional English.]

## 2. Codebase Context & Anchors (Grounded)
- **Target Files:**
  - `path/to/PrimaryFile.kt` (owns [specific UI / logic responsibility])
  - `path/to/HelperUtils.kt` (provides [functionality])
- **Key Symbols / State:**
  - `TargetViewModel.stateFlow`: [how it behaves]
  - `TargetFunction()`: [expected signature / behavioral contract]

## 3. Detailed Behavioral Specification
1. **User Action / Trigger:** [Step 1: what triggers the feature]
2. **State & Logic Transformation:** [Step 2: what happens under the hood]
3. **UI / Output Feedback:** [Step 3: what the user sees upon success or failure]
4. **Edge Cases & Failure Guardrails:**
   - [Handling empty state / invalid inputs]
   - [Network / memory / concurrency protections]

## 4. Non-Goals & Invariants (What NOT to do)
- Do NOT modify unrelated subsystems (e.g., [unrelated screens / tables]).
- Do NOT introduce breaking schema changes without migration.
- Preserve existing styling and architecture patterns ([e.g. MVI / MVVM / Compose ModernColors]).

## 5. Verification & Acceptance Criteria
- [ ] [Compiler / build verification command or criterion]
- [ ] [Unit test or logic verification criterion]
- [ ] [Manual UX acceptance test scenario]
```
````

---

## 💬 Communication Protocol with User

When executing this skill:
1. **Acknowledge the raw intent** in friendly, brief Hinglish/English.
2. **Display the Grounding summary** (naming the verified files/symbols identified via CBM).
3. **Present the complete Enhanced Prompt** inside a single copy-pasteable markdown block.
4. If ambiguous, ask the clarifying question first before finalizing.
