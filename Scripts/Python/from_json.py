#!/usr/bin/env python3

"""
Converting a JSON file to a CSV file
"""

import csv
import json

from sys import argv


def json_to_csv(json_file, csv_file):
    """
    Convert a JSON file to a CSV file

    Parameters:
        - json_file: JSON file to convert
        - csv_file: CSV file to create

    Returns:
        - None
    """

    with open(json_file, "r") as file:
        data = json.load(file)

    with open(csv_file, "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(data[0].keys())

        for row in data:
            writer.writerow(row.values())


def main():
    json_file = argv[1]
    csv_file = argv[2]
    json_to_csv(json_file, csv_file)


if __name__ == "__main__":
    if len(argv) != 3:
        print("Usage: json-csv <json_file> <csv_file>")
        print("Example: json-csv data.json data.csv")
        exit(1)
    main()
