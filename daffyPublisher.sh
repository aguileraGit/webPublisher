#!/bin/bash

echo "$(date '+%Y-%m-%d %H:%M:%S') INFO: Starting daffyPublisher.sh"

# Copy bacon.md from toc
cp "/home/diegoaguilera/Projects/toc/Daffy resting her head on things.md" DaffyRestingHerHeadOnThings.md


# Find all images in bacon.md with the extension .jpeg
images=$(grep -oP 'IMG.*?\.(jpeg|jpg)' DaffyRestingHerHeadOnThings.md)


# Copy all images to ../webPublisher
for image in $images; do
  cp "/home/diegoaguilera/Projects/toc/attachments/$image" "/home/diegoaguilera/Projects/webPublisher/attachments/$image"
done
