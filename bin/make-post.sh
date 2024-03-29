#!/bin/bash

# Function to convert title to lowercase, replace spaces with hyphens, and remove special characters
function convert_title_to_filename() {
    echo "$1" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-'
}

# Check if the title is provided as a command line argument
if [ -n "$1" ]; then
    title="$1"
else
    # Prompt the user for the post title if not provided as an argument
    read -p "Enter the post title: " title
fi

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