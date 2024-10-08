#!/usr/bin/env python3

"""
Converting a JSON file to a CSV file

First check if the JSON file is encoded in UTF-8, if not convert it to UTF-8
then continue with the conversion to CSV.

AUTHOR: Tafara Nyamhunga
GITHUB: Tafara-N

"""

import chardet
import csv
import json

from sys import argv


def main() -> None:
    """
    The main function to convert a JSON file to a CSV file.
    """

    if len(argv) != 3:
        print("Usage: json-csv <json_file> <csv_file>")
        print("Example: json-csv data.json data.csv")
        exit(1)

    json_file: str = argv[1]
    csv_file: str = argv[2]
    json_to_csv(json_file, csv_file)


def json_to_csv(json_file: str, csv_file: str) -> None:
    """
    Convert a JSON file to a CSV file.

    The JSON file to be converted is first checked and converted to UTF-8 if
    it is not already encoded in UTF-8.

    Arguments:
        json_file: The JSON file to convert to CSV.
        csv_file: The CSV file to create.
    """

    utf8_json_file = to_utf8(filepath=json_file)

    with open(utf8_json_file, "r") as file:
        data = json.load(file)

    with open(csv_file, "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(data[0].keys())

        for row in data:
            writer.writerow(row.values())


def to_utf8(*, filepath: str) -> str:
    """
    Check if a file is encoded in UTF-8 and convert it if it is not.

    Arguments:
        filepath: The JSON file to check and convert to UTF-8.

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
    main()
