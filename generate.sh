#!/bin/sh
sed '$d' -i cv.txt
echo -n "Last Updated: " >> cv.txt
date -R >> cv.txt
sed '$d' -i cv.md
echo -n "Last Updated: " >> cv.md
date -R >> cv.md

odir=other_formats
mkdir -p $odir

pandoc cv.md -o $odir/cv.pdf
pandoc cv.md -o $odir/cv.html
pandoc cv.md -o $odir/cv.latex
pandoc cv.md -o $odir/cv.odt
rm -f *~
rm -f *.log
