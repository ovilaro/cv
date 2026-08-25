# AGENTS.md

Guidelines for working on this CV project.

## Language decisions for the CV title/subtitle

| Language | Term to use | Example subtitle |
|----------|-------------|------------------|
| Catalan  | desenvolupador | Desenvolupador d'aplicacions mòbils i videojocs |
| Spanish  | desarrollador  | Desarrollador de aplicaciones móviles y videojuegos |
| English  | software engineer | Software Engineer — Mobile apps & Videogames |

## Rationale

- "Enginyer" / "Ingeniero" imply a university engineering degree in Catalan/Spanish contexts; the CV holder has a CFGS (vocational cycle), so "desenvolupador/desarrollador" is the accurate term.
- In English job-market usage, "software engineer" is conventional and acceptable regardless of degree.

## Workflow rules

- After any change that affects the output (`CV_*.md`, `header.tex`, `build.sh`), run `./build.sh`.
- Then OPEN ALL THREE PDFs on the user's desktop with `open exported_pdf/CV_ca.pdf exported_pdf/CV_es.pdf exported_pdf/CV_en.pdf` so the user reviews them personally. Do not consider the task finished until they are opened.
- Before opening them, run a quick automated sanity check (`pdfinfo` page count must be 1 page per CV; spot-check content with `pdftotext`) so obvious breakage is caught without wasting the user's review.
- NEVER `git add` or `git commit`. The user reviews the opened PDFs and commits personally. If the user asks for a commit message, propose only a subject line.

## Files

- `CV_ca.md` — Catalan CV (source of truth)
- `CV_es.md` — Spanish CV (translated from `CV_ca.md`)
- `CV_en.md` — English CV
- `header.tex` — LaTeX styling (accent color, section rules, icons)
- `build.sh` — rebuild script: `./build.sh` → all three PDFs
- `README.md` — project overview and installed software
- `source_docs/` — reference documents (previous CVs, certificates)