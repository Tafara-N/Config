#!/usr/bin/bash

# Function to display help
show_help() {
  SCRIPT_NAME=$(basename "$0")
  echo
  echo -e "Usage: $SCRIPT_NAME module [class_or_function] [method]\n"

  echo -e "Prints the docstring of the module, class, function, or method.\n"

  echo "Arguments:"
  echo "  module             -- The name of the module to be imported"
  echo "  class_or_function  -- The name of the class or function"
  echo "                        After module name, you can pass either a class or function."
  echo "                        If a class is passed, you can optionally pass a method."
  echo -e "  method             -- The name of the method (if applicable)\n"

  echo "Examples:"
  echo "  $SCRIPT_NAME my_module"
  echo "  $SCRIPT_NAME my_module MyClass"
  echo "  $SCRIPT_NAME my_module my_function"
  echo -e "  $SCRIPT_NAME my_module MyClass my_function\n"
}

# Check if --help or -h is provided
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  show_help
  exit 0
fi

# Check if the number of arguments is less than 1 or greater than 4
if [ $# -lt 1 ] || [ $# -gt 4 ]; then
  SCRIPT_NAME=$(basename "$0")
  echo "Usage: $SCRIPT_NAME module [class_or_function] [method]"
  echo "Run '$SCRIPT_NAME --help' for more information."
  exit 1
fi

MODULE=$1
CLASS_OR_FUNCTION=$2
METHOD=$3

# Construct the Python command based on the provided arguments
if [ -z "$CLASS_OR_FUNCTION" ]; then
  CMD="print(__import__(\"$MODULE\").__doc__)"
elif [ -z "$METHOD" ]; then
  CMD="print(__import__(\"$MODULE\").$CLASS_OR_FUNCTION.__doc__)"
else
  CMD="print(__import__(\"$MODULE\").$CLASS_OR_FUNCTION.$METHOD.__doc__)"
fi

# Execute the Python command
python3 -c "$CMD"
