```bash
#!/bin/bash

# I like thses
sudo apt-get install -y nala brightnessctl playerctl

# Install all .deb files in the pwd
for deb_file in ./*.deb; do
    if [ -e "$deb_file" ]; then
        # Extract package name from the filename
        package_name=$(dpkg-deb -f "$deb_file" | grep -i "package" | cut -d " " -f 2)
        
        # If already installed
        if dpkg -l | grep -q "^ii  $package_name "; then
            # Check if a newer version is available
            if dpkg --compare-versions "$(dpkg-deb -f "$deb_file" | grep -i "version" | cut -d " " -f 2)" gt "$(dpkg -l | grep "^ii  $package_name " | awk '{print $3}')"; then
                echo "Updating $package_name to the latest version..."
                sudo dpkg -i "$deb_file"
            else
                echo "$package_name is already up-to-date."
            fi
        else
            echo "Installing $package_name..."
            sudo dpkg -i "$deb_file"
            # Install missing dependencies if needed
            sudo apt-get install -f -y
        fi
    fi
done

# Update and upgrade system
sudo apt-get update && sudo apt-get upgrade -y
