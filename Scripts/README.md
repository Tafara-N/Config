# Ubuntu Set Up

## Table of Content
- [Author](#author)
- [Description](#description)
- [Bash](#bash)
- [Scripts](#scripts)

## Description

Contains automated scripts, configurations and basic Ubuntu set up.

```shell
git clone https://github.com/Tafara-N/Config.git
cd Config ; cd Scripts
./zsh
./setup
./packages
```

## Scripts

- [keys](keys): Generates RSA pair keys. Private `key name` provided by the `$USER`. Bits in the key `4096`.
- [package_backup](package_backup): Script re-creates your software environment, you can generate a list of all installed packages.
- [packages](packages): Installs some packages.
- [setup](setup): Script is used to setup the environment for the first time.
- [shell](shell): Last script to be ran after the environment has been configured.
- [zsh](zsh): Installs and sets up zsh shell.

## Bash

**Script prints Python docs: Module, Function/Method and Classes.**
- [Python Docs](Bash/documentation.sh)

____

**Script is used to free up memory in Linux systems.**
- [Free Memory](Bash/free_memory.sh)

____

**Script removes old revisions of snaps.**

-[Remove Old Snaps](Bash/old_snaps.sh)

____

**Script fixes speaker problems on Huawei Matebook D15: 'No sound'.**

- [Fix No Sound Issues](Bash/speakers.sh)

### Bash: Cronjobs

**Cron job to update the system every day at 5 a.m, 12 pm, 6 pm and 10 pm**

- [Cronjob: Update System](Bash/Cronjobs/update.sh)
_____

**File explains how to use Cronjob.**

- [Intro to Cronjobs](Bash/Cronjobs/explanations.sh)

## Python

**Script reads a requirements.txt file and removes the version numbers from each line.**

- [Clean requirements](Python/clean_requirements.py)
_____

**Script prints Python docs: Module, Function/Method and Classes.**

- [Python Docs](Python/documentation.py)
_____

**Script to load a config template into the current directory.**

- [Load config file.](Python/load_config.py)

> **Files: *".editorconfig", ".flake8", ".nvmrc", ".pycodestyle", ".python-version", ".ruby-version", "setup.cfg"***
_____

**Script to load a .gitignore template into a .gitignore file.**

- [Load .gitignore file.](Python/load_gitignore.py)

> **Files: *Over 400 to choose from `<using numbers>`***
_____

**Script validates HTML and CSS files.**

- [Validate HTML and CSS](Python/w3c_validator.py)

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
