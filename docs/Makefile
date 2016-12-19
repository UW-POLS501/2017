RSCRIPT = Rscript
INPUTS = Makefile $(wildcard *.Rmd) $(wildcard include/*)

OUTPUT_DIR = docs
INDEX = $(OUTPUT_DIR)/index.html

.PHONY: all
all: build

build: $(INDEX)

$(INDEX): $(INPUTS)
	$(RSCRIPT) build.R
