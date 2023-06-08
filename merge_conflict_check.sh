#!/bin/bash

set -e

git clone https://github.com/sharan-vayakkady/notify.git

cd notfy

# Checkout the main branch
git checkout main

# Update the local repository
git pull

# Checkout the staging branch
git checkout staging

# Update the local repository
git pull

# Merge the main branch into staging
if git merge-base --is-ancestor main HEAD; then
  echo "No merge conflicts detected."
else
  echo "Merge conflict detected!"
  exit 1
fi
