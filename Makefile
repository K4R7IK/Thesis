MAIN = main
SOURCES = $(MAIN).tex $(wildcard sections/*/*.tex) $(wildcard format/*.tex)

all: $(MAIN).pdf

$(MAIN).pdf: $(SOURCES) references.bib
	pdflatex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.nav *.snm *.vrb

.PHONY: all clean
