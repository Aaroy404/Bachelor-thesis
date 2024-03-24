#!/bin/bash

# Check if a filename is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename.tex>"
    exit 1
fi

# Store the filename from the command-line argument
filename="$1"

# Apply vlna to the LaTeX file
vlna -r -l -v KkSsVvZzOoUuAaIi $filename

# Compile the LaTeX document
pdflatex --shell-escape -interaction=nonstopmode "$filename"

mv "${filename%.*}.pdf" "output.pdf"
