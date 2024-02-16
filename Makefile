.SUFFIXES: .pdf .tex .svg .gif .jpg

SHELL=/bin/bash -o pipefail

IMAGES = $(wildcard *.png) $(wildcard *.jpg)

solid.pdf: solid.tex liskov.pdf aspects.pdf principles.pdf $(IMAGES)
	pdflatex -shell-escape $<

.svg.pdf:
	rsvg-convert -f pdf -o $@ $<
