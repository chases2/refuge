#!/bin/bash

# Find all .dot files recursively and convert them
find . -type f -name "*.dot" | while read -r file; do
    # Get the file path without the extension
    base_path="${file%.dot}"
    
    echo "Converting $file..."
    dot -Tsvg "$file" -o "${base_path}.svg"
done

