# CV

Markdown-based CV, exported to PDF via pandoc + XeLaTeX.

## PDFs

- [CV_ca.pdf](./exported_pdf/CV_ca.pdf) — Catalan
- [CV_es.pdf](./exported_pdf/CV_es.pdf) — Spanish
- [CV_en.pdf](./exported_pdf/CV_en.pdf) — English (general)
- [CV_games_en.pdf](./exported_pdf/CV_games_en.pdf) — English (game-focused)

## Files

- `CV_ca.md` — Catalan CV (source of truth)
- `CV_es.md` — Spanish CV
- `CV_en.md` — English general CV
- `CV_games_en.md` — English CV focused on game development
- `header.tex` — LaTeX styling (accent color, section rules, icons)
- `build.sh` — rebuild script: `./build.sh` → all four PDFs
- `source_docs/` — reference documents (previous CVs, certificates)

## Build

```sh
./build.sh
```

Produces `exported_pdf/CV_ca.pdf`, `exported_pdf/CV_es.pdf`, `exported_pdf/CV_en.pdf`, and `exported_pdf/CV_games_en.pdf`.
Requires pandoc, XeLaTeX, and the LaTeX packages listed below.

## Installed software

Installed via Homebrew during setup:

| Tool | Version | Purpose |
|------|---------|---------|
| pandoc | 3.10 | Markdown → PDF/LaTeX converter |
| gmp | 6.3.0 | Dependency of pandoc |
| basictex | 2026.0301 | Minimal LaTeX distribution (xelatex, pdflatex, tlmgr) |
| poppler | 26.07.0 | `pdftotext` for extracting text from PDFs |

LaTeX packages installed via `tlmgr` (inside basictex):

- fontawesome5 — icons in the CV header
- titlesec — section title styling
- enumitem — list spacing control

### Uninstall

```sh
sudo tlmgr remove fontawesome5 titlesec enumitem
brew uninstall pandoc poppler && brew uninstall --cask basictex
```