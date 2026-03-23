# LaTeX thesis build
MAIN = main
LATEXMK = latexmk

.PHONY: all clean distclean watch

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	$(LATEXMK) -pdf -interaction=nonstopmode $(MAIN).tex

watch:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode $(MAIN).tex

clean:
	$(LATEXMK) -c $(MAIN).tex

distclean: clean
	$(LATEXMK) -C $(MAIN).tex
	rm -f $(MAIN).pdf
