#!/usr/bin/env zsh
set -e
CURRENT_DIR=$(pwd)
INPUT="$CURRENT_DIR/code"
OUT="$CURRENT_DIR/fin"
mkdir -p $OUT
cd $INPUT
# Do twice to make sure page numbers happen
/usr/bin/env lualatex -output-directory $OUT $INPUT/cv.tex
/usr/bin/env lualatex -output-directory $OUT $INPUT/cv.tex
echo "output generated at: $OUT/$INPUT.pdf"
rm $OUT/*.{aux,log,out}