#!/bin/bash

# create the main directory
mkdir "$1"

# navigate to the main directory
cd "$1"

# create the subdirectory for the notes
mkdir Figures

# create the master.tex file
text_file="/Users/finkbeca/Documents/Scripts/tex-notes/beamer/tex.txt"
text=$(cat "$text_file")

# Append the text to the file assigned to $2
echo "$text" >> "$2".tex

cp ~/Documents/Scripts/tex-notes/beamer/preamble.tex preamble.tex