.SUFFIXES: .pdf .tex .svg .png .jpg

solid.pdf: solid.tex images
	pdflatex -shell-escape $<

images: $(wildcard *.png) $(wildcard *.jpg) liskov.pdf aspects.pdf principles.pdf

.svg.pdf:
	rsvg-convert -f pdf -o $@ $<
