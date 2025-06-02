#!/bin/bash

# Clean previous builds
rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg

# Create necessary directories
mkdir -p figures pdfs

# Compile the document
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex

echo "Build complete! Check main.pdf"
