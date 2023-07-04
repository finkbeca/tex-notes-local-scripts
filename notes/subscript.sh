#!/bin/bash

# create the main directory
mkdir "$1"

# navigate to the main directory
cd "$1"

# create the subdirectory for the notes
mkdir Figures

# create the master.tex file

text_file="/Users/finkbeca/Documents/Scripts/tex-notes/notes/tex.txt"
text=$(cat "$text_file")
# Append the text to the file assigned to $2
echo "$text" >> "$2".tex

A_text_file="/Users/finkbeca/Documents/Scripts/tex-notes/notes/A.txt" 
A_text=$(cat "$A_text_file")

B_text_file="/Users/finkbeca/Documents/Scripts/tex-notes/notes/B.txt" 
B_text=$(cat "$B_text_file")

echo "$A_text" >> "A".tex
echo "$B_text" >> "B".tex

cp ~/Documents/Scripts/tex-notes/notes/preamble.tex preamble.tex
