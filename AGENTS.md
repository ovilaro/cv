# AGENTS.md

Guidelines for working on this CV project.

## Language decisions for the CV title/subtitle

| Language | Term to use | Example subtitle |
|----------|-------------|------------------|
| Catalan  | desenvolupador | Desenvolupador d'aplicacions mòbils multiplataforma |
| Spanish  | desarrollador  | Desarrollador de aplicaciones móviles multiplataforma |
| English  | software engineer | Software Engineer — Mobile apps |
| English (game-focused) | software engineer | Software Engineer — Game Developer |

## Rationale

- "Enginyer" / "Ingeniero" imply a university engineering degree in Catalan/Spanish contexts; the CV holder has a CFGS (vocational cycle), so "desenvolupador/desarrollador" is the accurate term.
- In English job-market usage, "software engineer" is conventional and acceptable regardless of degree.
- The default CVs stress mobile apps; a separate English variant (`CV_games_en.md`) leads with game development experience.

## Workflow rules

- Only open PDFs that were changed by the current edit. Do not re-open unchanged PDFs after a build.

## Files

- `CV_ca.md` — Catalan CV (source of truth)
- `CV_es.md` — Spanish CV (translated from `CV_ca.md`)
- `CV_en.md` — English general CV
- `CV_games_en.md` — English CV focused on game development (DABADU expanded, other jobs condensed to one line)
- `header.tex` — LaTeX styling (accent color, section rules, icons)
- `build.sh` — rebuild script: `./build.sh` → all four PDFs
- `README.md` — project overview and installed software
- `docs/` — reference documents (previous CVs, certificates)