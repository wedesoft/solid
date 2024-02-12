.SUFFIXES: .pdf .tex .svg .gif .jpg

solid.pdf: solid.tex solidframe-0.jpg liskov.pdf
	pdflatex -shell-escape $<

solidunoptim.gif: solidanim.gif
	gifsicle --unoptimize $< > $@

solidframe-0.jpg: solidunoptim.gif
	convert $< -quality 80 solidframe-%d.jpg

.svg.pdf:
	rsvg-convert -f pdf -o $@ $<
