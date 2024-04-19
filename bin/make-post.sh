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

# Check if the tags are provided as a second command line argument
if [ -n "$2" ]; then
  tags="$2"
else
  tags="[]"
fi

# Check if the directory flag is provided as a third command line argument
if [ "$3" = "--dir" ] || [ "$3" = "-d" ]; then
  create_directory=true
else
  create_directory=false
fi

# Generate the filename from the title
filename="$(convert_title_to_filename "$title")"

# Get the current date
current_date=$(date +"%Y-%m-%d")

if [ "$create_directory" = true ]; then
  # Create the directory with the filename
  mkdir -p "content/posts/$filename"
  
  # Create the index.md file inside the directory
  cat > "content/posts/$filename/index.md" <<EOF
---
title: "$title"
date: $current_date
draft: true
tags: [$tags]
---

<!--more-->
EOF
  
  echo "New post directory created: content/posts/$filename"
  echo "Index file created: content/posts/$filename/index.md"
else
  # Create the new post file with front matter and the <!--more--> string
  cat > "content/posts/$filename.md" <<EOF
---
title: "$title"
date: $current_date
draft: true
tags: [$tags]
---

<!--more-->
EOF
  
  echo "New post created: content/posts/$filename.md"
fi