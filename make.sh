#!/bin/bash

cat ./chapters/c*\.md ref.md > main.md && pandoc -V documentclass=report -V fontsize=11pt -H header.sty main.md -o output.pdf --latex-engine=xelatex