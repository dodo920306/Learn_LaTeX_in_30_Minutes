#!/bin/bash

if [[ $1 == "all" ]]; then
    for file in *.tex; do
        xelatex $file
        # twice for ones including images.
        xelatex $file
    done
elif [[ $1 == "clear" ]]; then
    rm -f *.pdf
else
    xelatex $1
    xelatex $1
fi
rm -f *.aux *.log *.toc
