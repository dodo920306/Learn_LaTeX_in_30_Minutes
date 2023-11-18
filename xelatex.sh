#!/bin/bash

if [[ $1 == "all" ]]; then
    for file in *.tex; do
        xelatex $file
        # for .bib
        bibtex ${file%.tex}.aux
        xelatex $file
        # Third pass
        xelatex $file
    done
elif [[ $1 == "clear" ]]; then
    rm -f *.pdf
else
    xelatex $1
    bibtex ${1%.tex}.aux
    xelatex $1
    xelatex $1
fi
rm -f *.aux *.log *.toc *.out *.bbl *.blg
