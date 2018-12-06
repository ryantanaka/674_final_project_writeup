TEX_SOURCES = $(shell find . -name "*.tex")
BIB_SOURCES = $(shell find . -name "*.bib")

default: writeup.pdf

writeup.pdf: $(TEX_SOURCES) $(BIB_SOURCES)
	pdflatex writeup
	bibtex writeup
	pdflatex writeup
	pdflatex writeup
	@echo "writeup.pdf file generated"

clean:
	/bin/rm -f *.aux *.log *.toc  *.blg *.bbl *.lof
	touch writeup.tex
