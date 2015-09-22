#!/bin/bash

for file in $(ls *.jpg | grep -v new); do
    ./whiteboard.sh $file
done

rm scribbles.adoc
for file in *.svg; do
    echo ". image:$file[${file%.svg}]" >> scribbles.adoc
done
asciidoctor scribbles.adoc
