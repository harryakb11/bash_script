#!/bin/bash

# Define the file format
#FILE_FORMAT=".sh" # . sh file
FILE_FORMAT=".txt" # .txt file

# Define the source directory
BASE_DIR="<base_directiory>"

# Define the destination directory
#DEST_DIR="<destination_directiory>"      # .sh destination
DEST_DIR="<destination_directiory>"       # .txt destination

# List of files to move
FILES=(
    # Batch files
    # Add more files as needed
)

# Loop through the files and move each one to the destination directory with ".sh" appended
for FILE in "${FILES[@]}"; do
    FULL_PATH="${BASE_DIR}${FILE}${FILE_FORMAT}"  # Combine the base directory with the file name
    DEST_PATH="${DEST_DIR}${FILE}${FILE_FORMAT}"  # Define the destination path with ".sh" appended
    echo "Checking for file: '$FULL_PATH'"  # Debugging line
    if [ -f "$FULL_PATH" ]; then
        mv "$FULL_PATH" "$DEST_PATH"
        echo "Moved $FULL_PATH to $DEST_PATH"
    else
        echo "File '$FULL_PATH' does not exist"
    fi
done
