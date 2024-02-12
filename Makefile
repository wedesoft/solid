.SUFFIXES: .pdf .tex

solid.pdf: solid.tex solidframe-0.jpg
	pdflatex -shell-escape $<

solidunoptim.gif: solidanim.gif
	gifsicle --unoptimize $< > $@

solidframe-0.jpg: solidunoptim.gif
	convert $< -quality 80 solidframe-%d.jpg
