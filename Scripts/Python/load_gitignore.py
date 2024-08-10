#!/usr/bin/env python3

"""
Script to load a .gitignore template into a .gitignore file
Choose a template from the available options and write it to .gitignore
"""

import os

# Step 1: List available templates
templates_dir = (
    "/home/tafara/Templates/gitignore/templates"
)
templates = [f for f in os.listdir(templates_dir) if f.endswith(".gitignore")]

# Step 2: Display options
print("Available .gitignore templates:")
for idx, template in enumerate(templates, start=1):
    print(f"{idx}. {template}")

# Step 3: User selection
selection = int(input("Select a template by number: ")) - 1
if selection < 0 or selection >= len(templates):
    print("Invalid selection")
    exit(1)

selected_template = templates[selection]

# Step 4: Load and write template
with open(os.path.join(templates_dir, selected_template), "r") as template_file:
    content = template_file.read()

with open(".gitignore", "w") as gitignore_file:
    gitignore_file.write(content)

print(f"Loaded {selected_template} into .gitignore")
