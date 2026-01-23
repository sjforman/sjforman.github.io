#!/bin/bash
# Convert a Hugo markdown post to rich text HTML on the clipboard
# Usage: ./bin/md-to-clipboard.sh content/posts/post-name.md

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <markdown-file>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: File not found: $1"
    exit 1
fi

# Strip YAML frontmatter, <!--more-->, and convert footnotes to inline parentheticals
# Then convert to HTML with pandoc
html=$(perl -0777 -e '
    $_ = <>;

    # Remove YAML frontmatter
    s/\A---\n.*?\n---\n//s;

    # Remove <!--more-->
    s/<!--more-->\n?//g;

    # Collect footnote definitions into a hash
    my %fn;
    while (/^\[\^([^\]]+)\]:\s*(.+)$/mg) {
        $fn{$1} = $2;
    }

    # Remove footnote definitions from text
    s/^\[\^[^\]]+\]:\s*.+$\n?//mg;

    # Replace footnote references with inline parentheticals
    s/\[\^([^\]]+)\]/" (" . ($fn{$1} || "???") . ")"/ge;

    # Clean up any double spaces
    s/  +/ /g;

    print;
' < "$1" | pandoc -f markdown -t html)

# Convert HTML to hex for osascript
hex=$(echo "$html" | hexdump -ve '1/1 "%.2x"')

# Copy to clipboard as rich text (text/html)
osascript -e "set the clipboard to «data HTML${hex}»"

echo "Copied to clipboard as rich text!"
