#!/usr/bin/env python3

"""
This script reads a requirements.txt file and removes the version numbers from
each line
"""

import re
import sys


def main() -> None:
    """
    The main function to clean a requirements.txt file.
    """

    if len(sys.argv) != 2:
        print("Usage: ./script.py <path_to_requirements.txt>")
        sys.exit(1)

    file_path = sys.argv[1]
    cleaned_text = clean_requirements_file(file_path)

    save_cleaned_file(file_path, cleaned_text)


def clean_requirements_file(file_path: str) -> str:
    """
    Clean the 'requirements.txt' file by removing the version numbers from each
    line.

    Arguments:
        file_path: The path to the 'requirements.txt' file.

    Returns:
        str
            The cleaned text from the 'requirements.txt' file.
    """

    with open(file_path, 'r') as file:
        contents = file.readlines()

    # Clean each line using regex
    cleaned_contents = [re.sub(r"==.*", "", line) for line in contents]

    cleaned_text = ''.join(cleaned_contents)

    return cleaned_text


def save_cleaned_file(file_path: str, cleaned_text: str) -> None:
    """
    Clean the 'requirements.txt' file and save the cleaned text to the same
    file.

    Arguments:
        file_path: The 'requirements.txt' file to clean.
        cleaned_text: The cleaned text from the 'requirements.txt' file.
    """

    # Overwrite the original file with the cleaned text
    replaced_file = file_path.replace('.txt', '.txt')

    with open(replaced_file, 'w') as file:
        file.write(cleaned_text)
    print(f"Cleaned file saved as: {replaced_file}")


if __name__ == "__main__":
    main()
