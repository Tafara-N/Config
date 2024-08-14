# Config Files: Set Up And Usage

## Table of Content
- [Author](#author)
- [Basic Usage](../README.md#basic-templates-usage)
- [Description](#description)
- [Structure](#on-ubuntu)
- [Set Up](#set-up)

## Pycodestyle Configuration

[Official Site](https://pycodestyle.pycqa.org/en/latest/intro.html#configuration)

The behaviour may be configured at two levels, the **user** and **project** levels.

At the user level, settings are read from the following locations:

**On Windows:**

`~\.pycodestyle`

**On Linux:**

Otherwise, if the `XDG_CONFIG_HOME` environment variable is defined:

`XDG_CONFIG_HOME/pycodestyle`

Else if `XDG_CONFIG_HOME` is not defined:

`~/.config/pycodestyle`

**Example:**

```python
[pycodestyle]
count = False
ignore = E226,E302,E71
max-line-length = 160
statistics = True
```

At the **project** level, a `setup.cfg` file or a `tox.ini` file is read if present. If none of these files have a `[pycodestyle]` section, no **project** specific configuration is loaded.

## Black Formatter

[Official Site](https://black.readthedocs.io/en/stable/usage_and_configuration/the_basics.html#configuration-via-a-file)

By default *Black* looks for `pyproject.toml` containing a `[tool.black]` section starting from the common base directory of all files and directories passed on the command line. If it’s not there, it looks in parent directories. It stops looking when it finds the file, or a `.git` directory, or a `.hg` directory, or the root of the file system, whichever comes first.

If you’re formatting standard input, Black will look for configuration starting from the current working directory.

You can use a “global” configuration, stored in a specific location in your home directory. This will be used as a fallback configuration, that is, it will be used if and only if *Black* doesn’t find any configuration as mentioned above. Depending on your operating system, this configuration file should be stored as:

**On Windows:**

`~\.black`

**Unix-like (Linux, MacOS, etc.):**

`$XDG_CONFIG_HOME/black` (`~/.config/black` if the `XDG_CONFIG_HOME` environment variable is not set)

Note that these are paths to the TOML file itself (meaning that they shouldn’t be named as `pyproject.TOML`), not directories where you store the configuration. Here, `~` refers to the path to your home directory.

On Windows, this will be something like `C:\\Users\UserName`.

You can also explicitly specify the path to a particular file that you want with `--config`. In this situation *Black* will not look for any other file.




## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
