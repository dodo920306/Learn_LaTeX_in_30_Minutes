#!/bin/bash

if [[ $1 == "all" ]]; then
    for file in *.tex; do
        pdflatex $file
    done
elif [[ $1 == "clear" ]]; then
    rm -f *.pdf
else
    pdflatex $1
fi
rm -f *.aux *.log *.toc *.out *.bbl *.blg
