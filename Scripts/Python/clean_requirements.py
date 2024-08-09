#!/usr/bin/env python3

"""
This script reads a requirements.txt file and removes the version numbers from
each line
"""

import re
import sys


def clean_requirements_file(file_path):
    # Open the file for reading
    with open(file_path, 'r') as file:
        contents = file.readlines()

    # Clean each line using regex
    cleaned_contents = [re.sub(r"==.*", "", line) for line in contents]

    # Join the cleaned lines back into a single string
    cleaned_text = ''.join(cleaned_contents)

    return cleaned_text


def save_cleaned_file(file_path, cleaned_text):
    # Define a new file name or use the same to overwrite
    new_file_path = file_path.replace('.txt', '.txt')
    # Open the new file for writing
    with open(new_file_path, 'w') as file:
        file.write(cleaned_text)
    print(f"Cleaned file saved as: {new_file_path}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: ./script.py <path_to_requirements.txt>")
        sys.exit(1)

    file_path = sys.argv[1]
    cleaned_text = clean_requirements_file(file_path)

    save_cleaned_file(file_path, cleaned_text)
