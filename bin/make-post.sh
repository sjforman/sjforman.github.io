#!/bin/bash

# Function to convert title to lowercase and replace spaces with hyphens
function convert_title_to_filename() {
  echo "$1" | tr '[:upper:]' '[:lower:]' | tr ' ' '-'
}

# Prompt the user for the post title
read -p "Enter the post title: " title

# Generate the filename from the title
filename="$(convert_title_to_filename "$title").md"

# Get the current date
current_date=$(date +"%Y-%m-%d")

# Create the new post file with front matter
cat > "content/posts/$filename" <<EOF
---
title: "$title"
date: $current_date
draft: true
tags: []
---

EOF

echo "New post created: content/posts/$filename"