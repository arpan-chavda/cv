#!/bin/sh
echo "Adding time-stamp to cv"
sed '$d' -i cv.txt
echo -n "Last Updated: " >> cv.txt
date -R >> cv.txt
sed '$d' -i cv.md
echo -n "Last Updated: " >> cv.md
date -R >> cv.md
echo "Making directory..."
odir=other_formats
mkdir -p $odir
echo "Generating other formats of CV..."
pandoc cv.md -o $odir/cv.pdf
pandoc cv.md -o $odir/cv.html
pandoc cv.md -o $odir/cv.latex
pandoc cv.md -o $odir/cv.odt
echo "Removing tmp and log files..."
rm -f *~
rm -f *.log
