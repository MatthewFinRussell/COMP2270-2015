#!/bin/bash
input="$1"
output="${input%.jpg}.bmp"
convert "$input" -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 "$output"
potrace -b svg "$output"
rm "$input"
rm "$output"
