.SUFFIXES: .pdf .tex .svg .gif .jpg

SHELL=/bin/bash -o pipefail

solid.pdf: solid.tex liskov.pdf aspects.pdf principles.pdf
	pdflatex -shell-escape $<

.svg.pdf:
	rsvg-convert -f pdf -o $@ $<
