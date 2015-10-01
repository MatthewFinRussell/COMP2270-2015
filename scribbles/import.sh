#!/bin/bash

for file in *.jpg; do
    ./whiteboard.sh $file
done

rm scribbles.adoc
for file in *.svg; do
    echo ". image:http://lawrancej.github.io/COMP2270-2015/scribbles/$file[${file%.svg}]" >> scribbles.adoc
done
asciidoctor scribbles.adoc
