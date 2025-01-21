.SUFFIXES: .pdf .tex .svg .png .jpg

IMAGES = $(wildcard *.png) $(wildcard *.jpg) liskov.pdf aspects.pdf principles.pdf

solid.pdf: solid.tex $(IMAGES)
	pdflatex -shell-escape $<

images: $(IMAGES)

.svg.pdf:
	rsvg-convert -f pdf -o $@ $<

clean:
	rm -Rf _minted-solid *.pdf *.aux *.log *.out
