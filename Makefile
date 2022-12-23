# Rules for compiling the PDF from the LaTeX sources and displaying the output

### File Types (for dependencies)
TEX = $(wildcard *.tex)
BIB = $(wildcard *.bib)
IMG = $(wildcard images/*)
PDF = $(patsubst %.tex,%.pdf,$(TEX))

# Rules for building, opening, and cleaning the PDF output
all: $(PDF)

%.pdf: %.tex $(BIB) $(IMG)
	tectonic -X compile $<

clean:
	rm -f $(PDF)
