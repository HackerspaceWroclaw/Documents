#!/bin/sh

for INPUT in *.md; do
	OUTPUT="${INPUT%.md}.pdf"
	echo "* $INPUT => $OUTPUT"
	pandoc "$INPUT" -o "$OUTPUT"
done
