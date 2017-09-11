#!/bin/bash

xelatex mwe-xelatex.tex
xelatex mwe-xelatex.tex
xelatex mwe-xelatex.tex
pdf2svg mwe-xelatex.pdf cv%d.svg all
mv cv1.svg images/cv.svg
mv cv2.svg images/cover_letter.svg
convert -density 1200 -border 10 -bordercolor black images/cv.svg images/cv.png
convert -density 1200 -border 10 -bordercolor black images/cover_letter.svg images/cover_letter.png

 