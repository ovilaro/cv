#!/usr/bin/env bash
# Build all CV PDFs from Markdown sources using pandoc + xelatex
set -euo pipefail
dir="$(cd "$(dirname "$0")" && pwd)"
cd "$dir"
eval "$(/usr/libexec/path_helper)"

mkdir -p exported_pdf

pandoc CV_ca.md        -o exported_pdf/CV_ca.pdf        --pdf-engine=xelatex
pandoc CV_es.md        -o exported_pdf/CV_es.pdf        --pdf-engine=xelatex
pandoc CV_en.md        -o exported_pdf/CV_en.pdf        --pdf-engine=xelatex
pandoc CV_games_en.md  -o exported_pdf/CV_games_en.pdf  --pdf-engine=xelatex

echo "Built:
  $dir/exported_pdf/CV_ca.pdf
  $dir/exported_pdf/CV_es.pdf
  $dir/exported_pdf/CV_en.pdf
  $dir/exported_pdf/CV_games_en.pdf"