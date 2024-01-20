#!/bin/bash

# Check if the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
    echo "Error: This script must be run as root. Use 'sudo' to execute it."
    exit 1
fi

# Path to the GRUB configuration file
grub_cfg="/etc/default/grub"

# Check if the GRUB configuration file exists
if [ -e "$grub_cfg" ]; then
    # Backup the current GRUB configuration file
    cp "$grub_cfg" "$grub_cfg.backup"

    # Use sed to set GRUB_TIMEOUT to 0
    sudo sed -i 's/^GRUB_TIMEOUT=.*$/GRUB_TIMEOUT=0/' "$grub_cfg"

    # Update GRUB
    update-grub

    echo "GRUB timeout set to 0 successfully."

    # Display the updated contents of the GRUB configuration file
    echo "Updated contents of $grub_cfg:"
    cat "$grub_cfg"

    echo "Script execution completed."
else
    echo "Error: The GRUB configuration file $grub_cfg does not exist."
fi
