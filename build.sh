#!/usr/bin/env zsh
set -e
CURRENT_DIR=$(pwd)
INPUT="cv"
OUT="$CURRENT_DIR/out"
/usr/bin/env lualatex -output-directory $OUT code/$INPUT.tex
echo "output generated at: $OUT/$INPUT.pdf"
rm $OUT/$INPUT.{aux,log,out}