#!/bin/bash

# Path to the unattended-upgrades file
file_path="/etc/apt/apt.conf.d/50unattended-upgrades"

# Check if the file exists
if [ -e "$file_path" ]; then
    # Use sed to remove any extra junk at the end of line 2
    sudo sed -i '2s/[[:space:]]*#.*$//' "$file_path"

    echo "Syntax error in $file_path has been auto-fixed."

    # Display the updated contents of the file
    echo "Updated contents of $file_path:"
    cat "$file_path"

    echo "Script execution completed."
else
    echo "Error: The file $file_path does not exist."
fi
