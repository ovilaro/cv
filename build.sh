#!/usr/bin/env bash
# Build all CV PDFs from Markdown sources using pandoc + xelatex
set -euo pipefail
dir="$(cd "$(dirname "$0")" && pwd)"
cd "$dir"

for command_name in pandoc xelatex; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    printf 'Error: %s is required to build the CVs.\n' "$command_name" >&2
    exit 1
  fi
done

mkdir -p exported_pdf

sources=(CV_ca.md CV_es.md CV_en.md CV_games_en.md)

for source in "${sources[@]}"; do
  pandoc "$source" \
    -o "exported_pdf/${source%.md}.pdf" \
    --pdf-engine=xelatex
done

printf 'Built:\n'
for source in "${sources[@]}"; do
  printf '  %s/exported_pdf/%s.pdf\n' "$dir" "${source%.md}"
done
