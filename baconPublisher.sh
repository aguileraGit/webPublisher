#!/bin/bash

# Copy bacon.md from toc
cp "../toc/bacon.md" bacon.md


# Find all images in bacon.md with the extension .jpeg
images=$(grep -oP 'IMG.*?\.(jpeg|jpg)' bacon.md)


# Copy all images to ../webPublisher
for image in $images; do
  cp "../toc/attachments/$image" "attachments/$image"
done
