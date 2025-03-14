#!/bin/bash
set -e

echo "This is what the initial home directory has"
ls -lr ~
# Installation script
steps=(
    "Checking system requirements..."
    "Downloading dependencies..."
    "Extracting files..."
    "Configuring settings..."
    "Optimizing performance..."
    "Finalizing installation..."
    "Cleaning up temporary files..."
    "Installation complete!"
)
echo "Installing required libraries"
chmod +x data_visualization_library.elf
./data_visualization_library.elf
for step in "${steps[@]}"; do
    echo "$step"
    sleep 1.5  # Adjust timing to make it run ~10 seconds
done

echo "Now we will list the home directory after the execution"
ls -lr ~
