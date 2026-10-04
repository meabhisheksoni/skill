---
name: "Scissors-Slice"
description: "Analyzes large source code files and refactors/splits them into cohesive, modular, single-responsibility submodules."
---

# Scissors-Slice Agent Skill Guide (v1.1.0)

This skill guides coding agents (like Claude Code, Cursor, and Codex) through the process of analyzing monolithic files, detecting mixed concerns (low cohesion/violating SRP), and refactoring them into clean, modular submodules.

---

## 🛠️ Triggers & Activation

Activate this skill when the user asks to:
*   *"Divide this monolithic file into modular submodules"*
*   *"Slice this large code file"*
*   *"Improve code modularity / SRP"*
*   *"Apply Scissors-Slice on <file_path>"*
*   *"Separate concerns in this code"*

---

## 📋 Instructions for the Executing Agent

When this skill is triggered, you must perform the refactoring strictly following these sequential stages:

### Stage 1: Responsibility & Import Analysis
1.  Read the target file and map its functions, state variables, and events.
2.  Check for large folders like `node_modules` or `.venv`. Proactively suggest or verify `.claudeignore` configurations to prevent token draining during scans.
3.  Group code elements into cohesive modules based on their domain:
    *   *Frontend/UI:* DOM queries, animations, event listeners, rendering.
    *   *Network/API:* AJAX requests, fetch, socket events.
    *   *Business Logic:* Computations, validation schemas, algorithms.
    *   *Data/Config:* Constants, initial state, config objects.

### Stage 2: Silent Submodule Creation & Safety Backup (NO original file edits)
1.  **Safety Backup (Mandatory):** Create a `backups/` directory in the target project root and make a copy of the original monolithic file (e.g. `backups/<filename>.original.<ext>`) before editing anything.
2.  Create the new submodule files in a clean directory (e.g. `js/`, `components/`, or `modules/`) and write the extracted modular code there:
    *   Use standard ES Modules (`export` statements) for JS/TS, or package modules in Python.
    *   **DO NOT** modify the original main file or the HTML files in this stage.

### Stage 3: Interactive User Approval (CRITICAL)
Stop executing tools. Print a summary detailing:
1.  The list of files created.
2.  The structural changes proposed.
3.  The clean coordinator code proposed to replace the monolith.
4.  **Request explicit user confirmation before touching the main file.**

### Stage 4: Main File Integration & Environment Warning
Only after receiving explicit user approval, proceed to:
1.  Rewrite the original main file to act as the coordinator (importing and executing the submodules).
2.  Modify the HTML file to add `type="module"` to the script tag, or update references in package setups.
3.  **CORS Warning:** If refactoring a plain web project to ES Modules (`type="module"`), warn the user that opening `index.html` via double-clicking (`file://`) will trigger CORS blocking. Provide a quick command to serve the folder locally (e.g. `python -m http.server 8080` or Node `serve`).

---

## 📝 Modularization Recipes by Framework

### ⚛️ React / Next.js / React Native
*   **Subcomponents:** Extract complex inline visual elements to their own files inside `src/components/ui/` or `components/`.
*   **Business Logic & API:** Decouple states, validations, and API fetch calls into custom hooks (`src/hooks/use-<feature>.ts`).
*   **Views:** Keep the main screen/page file thin, importing only the custom hooks and layout subcomponents.

### 🟢 Fastify / Express (Node.js Backend)
*   **Validation Schemas:** Extract inline validation schemas (e.g. Zod or Joi) into `*.schemas.ts`.
*   **Controllers:** Map database queries, object mapping, and response serialization inside a class controller `*.controller.ts`.
*   **Routes:** Keep `*.routes.ts` file thin (less than 100 lines), importing the controller and schemas, registering endpoints only.
