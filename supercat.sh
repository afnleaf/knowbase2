#!/bin/bash

# Function to print help message
print_usage() {
    echo "Usage: supercat [options] path extension"
    echo "Options:"
    echo "  -n    Don't show filenames"
    echo "  -s    Don't show summary"
    echo "Example: supercat /path/to/folder txt"
    echo "         supercat -n /path/to/folder .log"
}

# Initialize default values
show_filename=true
show_summary=true

# Parse command line options
while getopts "ns" opt; do
    case $opt in
        n) show_filename=false ;;
        s) show_summary=false ;;
        ?) print_usage; exit 1 ;;
    esac
done

# Shift past the options
shift $((OPTIND-1))

# Check if required arguments are provided
if [ $# -ne 2 ]; then
    print_usage
    exit 1
fi

folder_path="$1"
file_ext="$2"

# Ensure extension starts with a dot
[[ $file_ext != .* ]] && file_ext=".$file_ext"

# Initialize counter
file_count=0

# Check if folder exists
if [ ! -d "$folder_path" ]; then
    echo "Error: Directory $folder_path does not exist" >&2
    exit 1
fi

# Find and process files
while IFS= read -r -d '' file; do
    ((file_count++))
    
    if [ "$show_filename" = true ]; then
        echo -e "\n================================================================================"
        echo "File: $file"
        echo "================================================================================"
    fi
    
    if ! cat "$file" 2>/dev/null; then
        echo "Error: Unable to read file $file" >&2
    fi
done < <(find "$folder_path" -type f -name "*$file_ext" -print0)

# Show summary if enabled
if [ "$show_summary" = true ]; then
    echo -e "\n================================================================================"
    echo "Total $file_ext files found: $file_count"
fi
