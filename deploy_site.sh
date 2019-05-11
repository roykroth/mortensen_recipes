#!/bin/bash

# Refresh from git
git pull

# Add changes to git
git add .

# Commit changes
msg="Updating Recipes `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

echo 'Site Deployed'