#!/bin/sh

in="figures"
out="."

for input in $(find "$in" -name "*.svg"); do
  f="${input##*/}"
  # inkscape -D -z --file="$input" --export-pdf="$out/${f%.svg}.pdf"
  inkscape -C "$input" --export-filename="$out/${f%.svg}.pdf"
done
