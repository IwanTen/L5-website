#!/bin/bash
# Script to update the offline-documentation without images on gh-pages-lite branch

# Safety check: Make sure we're on main
if [ "$(git branch --show-current)" != "main" ]; then
    echo "ERROR: This script must be run from the main branch."
    echo "Currently on: $(git branch --show-current)"
    exit 1
fi

# Check for uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo "ERROR: You have uncommitted changes. Please commit or stash them first."
    exit 1
fi

echo "Updating gh-pages-lite..."

# Fetch latest gh-pages
git fetch origin gh-pages

# Switch to gh-pages-lite
git checkout gh-pages-lite

# Reset to match gh-pages exactly
git reset --hard origin/gh-pages

# Remove images
rm -rf assets/images/ assets/examples/ assets/tutorials/ reference/assets/

# Commit and push
git add -A
git commit -m "Update lite version (remove images)"
git push --force origin gh-pages-lite

# Switch back to main
git checkout main

echo "Done! gh-pages-lite updated."
