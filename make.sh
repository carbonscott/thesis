#!/bin/bash

cat ./chapters/c*\.md ref.md > main.md && pandoc -V documentclass=report -V fontsize=12pt -V mainfont="Times New Roman" -H header.sty -s --bibliography=./Thesis_ZJNU.bib --csl=./Chinese-Full.csl main.md -o output.pdf --latex-engine=xelatex

#cat ./chapters/c*\.md ref.md > main.md && pandoc --toc -V documentclass=report -V fontsize=12pt -V mainfont="Times New Roman" -H header.sty -s --bibliography=./Thesis_ZJNU.bib --csl=./Chinese-Full.csl main.md -o output.pdf --latex-engine=xelatex

#cat ./chapters/c*\.md ref.md > main.md && pandoc --toc -V documentclass=report -V fontsize=12pt -H header.sty main.md -o output.pdf --latex-engine=xelatex

#cat ./chapters/abstract.md ./chapters/c0.md ./chapters/c1.md ref.md > main.md && pandoc -V documentclass=report -V fontsize=12pt -V mainfont="Times New Roman" -H header.sty -s --bibliography=./Thesis_ZJNU.bib --csl=./Chinese-Full.csl main.md -o output2.pdf --latex-engine=xelatex
