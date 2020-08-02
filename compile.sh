#!/bin/bash

# Script para compilar o material do curso

#production
cd src
Rscript compile.R
cd ../docs
cp introducao.html index.html


# development
# rm -rf docs/*
# cd src
# R -e "bookdown::render_book('index.Rmd', bookdown::gitbook(lib_dir = 'libs'))"
# cd ..
# cp docs/introducao.html docs/index.html
# google-chrome docs/index.html