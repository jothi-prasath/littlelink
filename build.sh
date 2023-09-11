#!/bin/bash

mkdir public

cp css public -r
cp fonts public -r
cp images public -r
cp index.html public
./minify -r -o public public
