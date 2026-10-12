---
name: voice-prompt-enhancer
description: >-
  Use this skill when the user provides a raw, messy, or dictated prompt (e.g. from voice chat) that contains text understanding mistakes or auto-correct errors. It cleans, clarifies, and rephrases the prompt to ensure the AI doesn't misinterpret or hallucinate context, and asks clarifying questions using interactive UI options if needed, before outputting a polished prompt.
---

# Voice Prompt Enhancer

This skill acts as a "voice chat cleaner" and "prompt enhancer." Users often dictate prompts or use voice typing that introduces typos, incorrect words (auto-correct errors), or confusing grammar. Your job is to deeply understand their true intent, clarify any ambiguities, and output a perfect, highly-detailed prompt that can be used for their actual task.

## Guidelines

1. **Understand and Clarify First**: Read the user's messy prompt carefully. Look for phonetic mistakes (e.g., "drop keys" instead of "drop-downs"). If there are ambiguities or you aren't 100% sure about a specific word or phrase, do NOT guess or hallucinate context.
2. **Ask Cross-Questions**: Use the `ask_question` tool (interactive multiple-choice modal) to ask the user to clarify the confusing parts. This allows the user to quickly choose the correct meaning. For example: "Did you mean 'drop-down menus' or 'arrow keys'?"
3. **No Hallucination**: Do not add external context that the user didn't imply. Stick strictly to clarifying what they actually meant to say.
4. **Output the Polished Prompt**: Once you have fully understood the user's intent, generate a clean, clear, well-structured prompt. Present this final prompt in a markdown code block so the user can easily copy it and send it to the AI in their next request.

## Execution Steps

1. **Analyze**: Analyze the user's initial messy input. Identify potential dictation/auto-correct errors.
2. **Clarify**: If there is ANY ambiguity, immediately ask clarifying questions. Use the `ask_question` tool to provide options so the user can easily select the correct interpretation (e.g., using arrow keys / UI).
3. **Refine**: Wait for the user's clarification.
4. **Generate**: Once clarified, draft a comprehensive and structured prompt that accurately reflects the intended task without any of the original errors.
5. **Deliver**: Present the final prompt clearly: "Here is your enhanced prompt. You can copy this and use it in your next chat:" followed by the prompt inside a markdown code block.
