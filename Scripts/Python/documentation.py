#!/usr/bin/env python3

"""
Script that prints the documentation of a module, a class, it's methods and
functions (inside or outside a class)

python3 -c 'print(__import__("my_module").__doc__)'
python3 -c 'print(__import__("my_module").MyClass.__doc__)'
python3 -c 'print(__import__("my_module").my_function.__doc__)'
python3 -c 'print(__import__("my_module").MyClass.my_function.__doc__)'

Usage examples:
documentation my_module
documentation my_module MyClass
documentation my_module my_function
documentation my_module MyClass my_function
"""

import argparse
import importlib.util
import sys
import os


def load_module(module_name):
    """
    Load a module given its name or file path.
    """
    if os.path.isfile(module_name):
        spec = importlib.util.spec_from_file_location("module.name", module_name)
        module = importlib.util.module_from_spec(spec)  # type: ignore
        sys.modules["module.name"] = module
        spec.loader.exec_module(module)  # type: ignore
        return module
    else:
        return importlib.import_module(module_name)

def main():
    """
    Function that parses command line arguments and prints the documentation
    """
    parser = argparse.ArgumentParser(
        description="Print documentation of a module, class, function, or method."
    )
    parser.add_argument("module", help="The name or path of the module to import")
    parser.add_argument("class_or_function", nargs='?', help="The name of the class or function to access")
    parser.add_argument("method", nargs='?', help="The name of the method to access")

    args = parser.parse_args()

    # Import the module
    module = load_module(args.module)

    if args.class_or_function:
        # Check if it's a class or a function
        if hasattr(module, args.class_or_function):
            obj = getattr(module, args.class_or_function)
            if callable(obj):
                # It's a function
                print(obj.__doc__)
            else:
                # It's a class
                if args.method:
                    # Get the method from the class
                    method = getattr(obj, args.method)
                    print(method.__doc__)
                else:
                    print(obj.__doc__)
        else:
            print(f"{args.class_or_function} not found in {args.module}")
    else:
        print(module.__doc__)

if __name__ == "__main__":
    main()
