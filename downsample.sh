#!/bin/bash
# brew install imagemagick

for item in ./*.jpg; do
  filename=$(basename "$item")
  echo $filename
  magick $filename -resize "1920x1920>" scaled/$filename
done
