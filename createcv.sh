#!/bin/bash

pandoc "$1" \
    -f gfm \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    -V mainfont="Arial" \
    -V monofont="Andale Mono" \
    --pdf-engine=xelatex \
    -o "$2"