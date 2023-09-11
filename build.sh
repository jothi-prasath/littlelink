#!/bin/bash

echo "creating folder"
mkdir public

echo "Copying files"
cp css public -r
cp fonts public -r
cp images public -r
cp index.html public

echo "excuting minify"
chmod +x ./minify
./minify -r -o public public
