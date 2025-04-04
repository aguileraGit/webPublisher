#!/bin/bash

echo "$(date '+%Y-%m-%d %H:%M:%S') INFO: Starting baconPublisher.sh"

# Copy bacon.md from toc
cp "/home/diegoaguilera/Projects/toc/bacon.md" bacon.md


# Find all images in bacon.md with the extension .jpeg
images=$(grep -oP 'IMG.*?\.(jpeg|jpg)' bacon.md)


# Copy all images to ../webPublisher
for image in $images; do
  cp "/home/diegoaguilera/Projects/toc/attachments/$image" "/home/diegoaguilera/Projects/webPublisher/attachments/$image"

done
