#!/bin/bash

cat ./chapters/c*\.md ref.md > main.md && pandoc --toc -V documentclass=report -V fontsize=12pt -H header.sty main.md -o output.pdf --latex-engine=xelatex
