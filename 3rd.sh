#!/bin/bash


# Get a list of all .deb files in the current directory
deb_files=$(ls *.deb 2>/dev/null)

# Check if there are any .deb files
if [ -z "$deb_files" ]; then
  echo "No .deb files found in the current directory."
  exit 1
fi

# Iterate through each .deb file
for deb_file in $deb_files; do
  # Install the .deb file
  sudo dpkg -i "$deb_file"

  # Check if installation was successful
  if [ $? -eq 0 ]; then
    echo "Installed $deb_file successfully."

    # Check if there's a newer version available in the repository
    sudo apt-get install -y --only-upgrade "$deb_file"

    # Check if any dependencies need to be installed
    sudo apt-get -f install -y
  else
    echo "Failed to install $deb_file."
  fi
done

# Update and upgrade the system
sudo apt-get update && sudo apt-get upgrade -y
