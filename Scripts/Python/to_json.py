#!/usr/bin/env python3

"""
Converting a CSV file to a JSON file

First check if the CSV file is encoded in UTF-8, if not convert it to UTF-8
then continue with the conversion to JSON.

AUTHOR: Tafara Nyamhunga
GITHUB: Tafara-N

"""

import chardet
import csv
import json

from sys import argv


def main() -> None:
    """
    The main function to convert a CSV file to a JSON file.
    """

    csv_file: str = argv[1]
    json_file: str = argv[2]
    csv_to_json(csv_file, json_file)


def csv_to_json(csv_file: str, json_file: str) -> None:
    """
    Convert a CSV file to a JSON file.

    The CSV file to be converted is first checked and converted to UTF-8 if
    it is not already encoded in UTF-8.

    Arguments:
        csv_file: The CSV file to convert to JSON.
        json_file: The JSON file to create.
    """

    utf8_csv_file = to_utf8(filepath=csv_file)

    with open(utf8_csv_file, "r") as file:
        reader = csv.DictReader(file)
        data = list(reader)

    with open(json_file, "w") as file:
        json.dump(data, file, indent=2)


def to_utf8(*, filepath: str) -> str:
    """
    Check if a file is encoded in UTF-8 and convert it if it is not.

    Takes a file path as input, reads the file, and checks if the file is
    encoded in UTF-8.

    Arguments:
        filepath: The CSV file to check and convert to UTF-8.

    Raises:
        ValueError
            If the encoding detection fails or no encoding is detected.

    Returns:
        str
            The converted file path if the file is not encoded in UTF-8.
    """

    with open(filepath, "rb") as file:
        raw_data = file.read()

    try:
        result = chardet.detect(raw_data)
        encoding = result["encoding"]
    except ValueError as error:
        print(f"Error: {error}")
        exit(1)

    if encoding != "utf-8":
        if encoding:
            decoded_data = raw_data.decode(encoding)
        else:
            raise ValueError("Encoding detection failed.")
        utf8_data = decoded_data.encode("utf-8")

        with open(filepath, "wb") as utf8_file:
            utf8_file.write(utf8_data)

    return filepath


if __name__ == "__main__":
    if len(argv) != 3:
        print("Usage: csv-json <csv_file> <json_file>")
        print("Example: csv-json data.csv data.json")
        exit(1)
    main()
