#!/bin/bash

echo "Creating folder"
mkdir src -p
mkdir public -p

echo "Copying files"
cp css src -r
cp fonts src -r
cp images src -r
cp index.html src
cp src/* public -r

echo "User-agent: *" > public/robots.txt >/dev/null 2>&1
echo "Excuting minify"
chmod +x ./minify
./minify -r -o public src/ --all --html-keep-default-attrvals >/dev/null 2>&1
