OUTPUT	:= document
MAIN	:= src/main.tex
BUILD	:= build
LATEX	:= latexmk
PDF		:= $(OUTPUT).pdf

LATEXFLAGS	:= -pdf \
            	-interaction=nonstopmode \
            	-file-line-error \
            	-synctex=1 \
            	-outdir=$(BUILD)

export TEXINPUTS := $(CURDIR)/tex/classes:$(CURDIR)/tex/packages:

.PHONY: all clean fclean re view help

all: $(PDF)

$(PDF): $(MAIN)
	@ mkdir -p $(BUILD)
	$(LATEX) $(LATEXFLAGS) -jobname=$(OUTPUT) $(MAIN)
	@ cp $(BUILD)/$(PDF) $@

clean:
	@ rm -rf $(BUILD)

fclean: clean
	@ rm -f $(PDF)

re: clean
	$(MAKE) all

view: $(PDF)
	@xdg-open $(PDF) 2>/dev/null || open $(PDF) 2>/dev/null || \
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