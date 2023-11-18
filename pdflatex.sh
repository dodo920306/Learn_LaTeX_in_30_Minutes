#!/bin/bash

if [[ $1 == "all" ]]; then
    for file in *.tex; do
        pdflatex $file
        bibtex ${file%.tex}.aux
        pdflatex $file
        pdflatex $file
    done
elif [[ $1 == "clear" ]]; then
    rm -f *.pdf
else
    pdflatex $1
    bibtex ${1%.tex}.aux
    pdflatex $1
    pdflatex $1
fi
rm -f *.aux *.log *.toc *.out *.bbl *.blg
