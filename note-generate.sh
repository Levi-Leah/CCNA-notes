#!/bin/bash

# Initialize variables
original_filename=""
formatted_filename=""
path=""

# Function to convert filename to lowercase and replace spaces with hyphens
format_filename() {
    echo "$1" | tr '[:upper:]' '[:lower:]' | tr ' ' '-'
}

# Parse command-line options
while getopts 'f:p:' flag; do
  case "${flag}" in
    f) original_filename="${OPTARG}"
       formatted_filename=$(format_filename "${OPTARG}") ;;
    p) path="${OPTARG%/}" ;; # Remove trailing slash if present
    *) echo "Usage: $0 -f filename [-p path]" >&2
       exit 1 ;;
  esac
done

# Check if filename is provided
if [ -z "$formatted_filename" ]; then
    echo "Error: Filename is mandatory"
    echo "Usage: $0 -f filename [-p path]"
    exit 1
fi

# Check if path is provided and is a directory
if [ -n "$path" ] && [ ! -d "$path" ]; then
    echo "Error: Provided path is not a directory or does not exist"
    exit 1
fi

# Create full file path
full_path="${path:+$path/}${formatted_filename}.md"

# Create the file with the specified content
{
    echo "# $original_filename"
    echo ""
    echo "## Questions/Cues"
    echo ""
    echo "## Notes"
    echo ""
    echo "## Summary"
} > "$full_path"

echo "File created at $full_path"
