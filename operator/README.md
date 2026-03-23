# Operator stack

Place your **final** operator codebase here, for example:

- `frontend/` — web UI (e.g. Vite + vanilla JS/React).
- `groq_brain/` (or `brain/`) — Python services, LLM integration, mission logic.

**Suggested migration from your dump:** copy `final-operator-project/frontend` → `operator/frontend`, and `final-operator-project/groq_brain` → `operator/groq_brain` (or rename to match your preference).

Remove `node_modules` before committing; reinstall with `npm install` / `pnpm install` as documented in each subproject.
