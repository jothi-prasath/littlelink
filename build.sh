#!/bin/bash

echo "Ereating folder"
mkdir src -p
mkdir public -p

echo "Copying files"
cp css src -r
cp fonts src -r
cp images src -r
cp index.html src

echo "Excuting minify"
chmod +x ./minify
./minify -r -o public src/ --all
