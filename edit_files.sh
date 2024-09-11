#!/bin/bash

# Define the file format
FILE_FORMAT=".sh"

# Define the file directory
DEST_DIR="<base_directory>"

# Get the new text from the first argument
NEW_TEXT="\$1"

# List of files to modify
FILES=(
    # rename batch files, add as you needed
    )

# Loop through the files to modify their content
for FILE in "${FILES[@]}"; do
    FILE_PATH="${DEST_DIR}${FILE}${FILE_FORMAT}"  # Define the file path with ".sh" appended

    # Check if the file exists and modify its content
    echo "Checking file: '$FILE_PATH'"  # Debugging line
    if [ -f "$FILE_PATH" ]; then
        sed -i 's/-C.*$/-C/' "$FILE_PATH"
        sed -i "s/-C[^ ]*/-C ${NEW_TEXT}/" "$FILE_PATH"
        echo "Modified $FILE_PATH"
    else
        echo "File '$FILE_PATH' does not exist"
    fi
done
