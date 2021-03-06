.PHONY: clean all watch
FILE=main
TEX=$(FILE).tex
PDF=$(FILE).pdf
TEXMAKE=latexmk -pdf

all: $(PDF)

$(PDF): $(TEX)
	$(TEXMAKE) $(TEX)

watch:
	$(TEXMAKE) -pvc $(TEX)

clean:
	rm -rf *.aux *.bbl *.blg *dvi *.log *.out *.synctex.gz *.toc *.lot *.lof *.fls *.ist *.acn
