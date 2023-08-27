#!/bin/bash

# Gets the github important url credentials

echo "Insert your github nickname:"
read github_nickname

echo "Insert the repository name(url):"
read repo_name

# Initialize the git repository
git init

# Adds everything in the repository and makes the first commit
git add .
git commit -m "First commit"

# Adds the remote repository and make the first push in main branch
git remote add origin https://github.com/$github_nickname/$repo_name.git
git branch -M main
git push -u origin main

echo "$repo_name repo created and configured!"