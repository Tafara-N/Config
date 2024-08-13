#!/usr/bin/env python3

"""
Script to load a config template into the current directory
Choose a template from the options and write into the current directory
"""

import os
import shutil

# Step 1: List available config files
config_dir = (
    "/home/tafara/Templates/config"
)

config_files = [
    f
    for f in os.listdir(config_dir)
    if f in [".editorconfig", ".flake8", ".nvmrc", ".pycodestyle", ".python-version", ".ruby-version", "setup.cfg" ]
]

# Step 2: Display options
print("Available configuration files:")
for idx, config_file in enumerate(config_files, start=1):
    print(f"{idx}. {config_file}")

# Step 3: User selection
selection = int(input("Select a configuration file by number: ")) - 1
if selection < 0 or selection >= len(config_files):
    print("Invalid selection")
    exit(1)

selected_config_file = config_files[selection]

# Step 4: Load and write config file
source_path = os.path.join(config_dir, selected_config_file)
destination_path = os.path.join(os.getcwd(), selected_config_file)

shutil.copyfile(source_path, destination_path)

print(f"Loaded {selected_config_file} into the current directory")
