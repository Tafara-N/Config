#!/usr/bin/env python3

"""
Converting a CSV file to a JSON file
"""

import csv
import json

from sys import argv


def csv_to_json(csv_file, json_file):
    """
    Convert a CSV file to a JSON file

    Parameters:
        - csv_file: CSV file to convert
        - json_file: JSON file to create

    Returns:
        - None
    """

    with open(csv_file, "r") as file:
        reader = csv.DictReader(file)
        data = list(reader)

    with open(json_file, "w") as file:
        json.dump(data, file, indent=2)


def main():
    csv_file = argv[1]
    json_file = argv[2]
    csv_to_json(csv_file, json_file)


if __name__ == "__main__":
    if len(argv) != 3:
        print("Usage: csv-json <csv_file> <json_file>")
        print("Example: csv-json data.csv data.json")
        exit(1)
    main()
