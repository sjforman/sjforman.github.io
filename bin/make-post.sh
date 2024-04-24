#!/bin/bash

# Function to convert title to filename: lowercase, replace spaces with hyphens, remove special characters
convert_title_to_filename() {
  echo "$1" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-'
}

# Get title from command line or prompt user
if [ -n "$1" ]; then
  title="$1"
else
  read -p "Enter the post title: " title
fi

# Get tags from command line or default to empty
if [ -n "$2" ]; then
  # Transform input "tag1, tag2" to "\"tag1\", \"tag2\""
  tags=$(echo "$2" | sed 's/ *, */", "/g' | awk '{print "\"" $0 "\""}')
else
  tags=""
fi

# Parse optional directory or filename from command line
if [ -n "$3" ]; then
  filename="$3"
else
  filename=$(convert_title_to_filename "$title")
fi

# Check if directory flag is set
create_directory=false
if [ "$4" = "--dir" ] || [ "$4" = "-d" ]; then
  create_directory=true
fi

# Get current date
current_date=$(date +"%Y-%m-%d")

if [ "$create_directory" = true ]; then
  mkdir -p "content/posts/$filename"

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
