#!/bin/bash

# Set your repository directory and GitHub remote name
REPO_DIR="$HOME/githubfaker"
REMOTE_NAME="origin"

# Navigate to the repository
cd $REPO_DIR

# Generate a random filename
FILENAME=$(date +%s%N)

# Create the file and add some random content to it
echo $RANDOM > $FILENAME.txt

# Add the new file to git
git add $FILENAME.txt

# Commit the changes
git commit -m "Add random file $FILENAME"

# Push the changes to GitHub
git push $REMOTE_NAME master

