#!/bin/bash

# Script para compilar o material do curso

# cd src
# Rscript compile.R
# cd ../docs

# cp introducao.html index.html

rm docs/*
cd src
R -e "bookdown::render_book('index.Rmd', bookdown::gitbook(lib_dir = 'libs'))"
google-chrome ../docs/introdução.html &