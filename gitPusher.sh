#!/bin/bash

echo "$(date '+%Y-%m-%d %H:%M:%S') INFO: Starting gitPusher.sh"

# Set the repository path (update this to your actual path)
REPO_PATH="/home/diegoaguilera/Projects/webPublisher/"

# Change directory to the repository
cd "$REPO_PATH" || exit 1

# Check if there are changes in the repository
if git status --porcelain | grep -q .; then
    # Add all changes (you can modify this to only add specific files or directories)
    git add .

    # Commit with a message indicating automated commit
    git commit -m "Automated commit: $(date +%Y-%m-%d_%H:%M:%S)"

    # Push changes to the remote repository (assumes your remote is named "origin")
    git push origin master  # or whatever branch you're using

    #echo "Changes committed and pushed successfully!"
    echo "$(date '+%Y-%m-%d %H:%M:%S') INFO: Changes committed and pushed successfully!"
else
    #echo "No changes detected. Nothing to commit."
    echo "$(date '+%Y-%m-%d %H:%M:%S') INFO: No changes detected. Nothing to commit."
fi
