#!/bin/bash

# Check if rye is installed
if ! command -v rye &> /dev/null
then
    echo "Rye is not installed. Installing Rye..."
    # Install Rye (replace with the actual installation command if different)
    curl -sSL https://install.rye-lang.org | bash
    # Add Rye to PATH (adjust the path according to the installation instructions)
    export PATH="$HOME/.rye/bin:$PATH"
    echo "Rye installed successfully."
else
    echo "Rye is already installed."
fi

# Check if task is installed
if ! command -v task &> /dev/null
then
    echo "Task is not installed. Installing Task..."
    # Install Task (replace with the actual installation command if different)
    curl -sSL https://taskfile.dev/install.sh | sh
    # Add Task to PATH (adjust the path according to the installation instructions)
    export PATH="$HOME/.task/bin:$PATH"
    echo "Task installed successfully."
else
    echo "Task is already installed."
fi

# Run rye init
echo "Running rye init..."
rye init
