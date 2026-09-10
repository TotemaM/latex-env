OUTPUT	:= document

SRCD	:= src
BLDD	:= build

MAIN	:= $(SRCD)/main.tex

LATEX	:= latexmk
PDF		:= $(OUTPUT).pdf

LATEXFLAGS	:= -pdf \
				-interaction=nonstopmode \
				-file-line-error \
				-synctex=1 \
				-auxdir=$(BLDD) \
				-outdir=$(BLDD)

export TEXINPUTS := $(CURDIR)/src:$(CURDIR)/libs/classes:$(CURDIR)/libs/packages:

.PHONY: all $(PDF) build clean fclean re view help

all: $(PDF)

build:
	mkdir -p $@

$(PDF): $(wildcard src/**/*.tex)
	$(LATEX) $(LATEXFLAGS) -jobname=$(OUTPUT) $(MAIN)
	cp $(BLDD)/$(PDF) .

clean:
	rm -rf $(BLDD)

fclean: clean
	rm -f $(PDF)

re: clean
	$(MAKE) all

view: $(PDF)
	@ xdg-open $(PDF) 2>/dev/null || open $(PDF) 2>/dev/null || \
		echo "Open $(PDF) manually."

help:
	@ echo "Available targets:"
	@ echo "    make              Build the PDF"
	@ echo "    make OUTPUT=name  Set the PDF output name"
	@ echo "    make MAIN=file    Set the main .tex source"
	@ echo "    make clean        Remove intermediate build files"
	@ echo "    make fclean       Remove build files and PDF"
	@ echo "    make re           Force a complete rebuild"
	@ echo "    make view         Open the generated PDF"