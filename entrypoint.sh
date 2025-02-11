#!/bin/bash

# Check if uv is installed
if ! command -v uv &> /dev/null
then
    echo "uv is not installed. Installing Uv..."
    # Install Rye (replace with the actual installation command if different)
    curl -LsSf https://astral.sh/uv/install.sh | sh
    # Add Rye to PATH (adjust the path according to the installation instructions)
    echo "uv installed successfully."
else
    echo "uv is already installed."
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

# Run uv init
echo "Running uv init..."
uv init
