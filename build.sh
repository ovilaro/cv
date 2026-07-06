#!/usr/bin/env bash
# Build CV.pdf from CV.md using pandoc + xelatex
set -euo pipefail
dir="$(cd "$(dirname "$0")" && pwd)"
cd "$dir"
eval "$(/usr/libexec/path_helper)"
pandoc CV.md -o CV.pdf --pdf-engine=xelatex
echo "Built: $dir/CV.pdf"