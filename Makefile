.SUFFIXES: .pdf .tex

solid.pdf: solid.tex
	pdflatex $<
