#!/usr/bin/env bash
# Build all CV PDFs from Markdown sources using pandoc + xelatex
set -euo pipefail
dir="$(cd "$(dirname "$0")" && pwd)"
cd "$dir"
eval "$(/usr/libexec/path_helper)"

# Remove old single-language PDF if present
rm -f CV.pdf

pandoc CV_ca.md        -o CV_ca.pdf        --pdf-engine=xelatex
pandoc CV_es.md        -o CV_es.pdf        --pdf-engine=xelatex
pandoc CV_en.md        -o CV_en.pdf        --pdf-engine=xelatex
pandoc CV_games_en.md  -o CV_games_en.pdf  --pdf-engine=xelatex

echo "Built:
  $dir/CV_ca.pdf
  $dir/CV_es.pdf
  $dir/CV_en.pdf
  $dir/CV_games_en.pdf"