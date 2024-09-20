# Ubuntu 24 Installed Packages

## Table of Content
- [Author](#author)
- [Bookmarks](Bookmarks/Brave/brave_bookmarks.html)
- [Description](#description)
- [Python 3.12.2: Requirements](Python/requirements.txt)
- [Ubuntu 24.04: Installed Packages](Ubuntu-24.04/packages.txt)
- [VS Code: Extensions](VS-Code-Extensions/README.md)

## Description

**To install packages from this file:**

**File location: [packages.txt](Ubuntu-24.04/packages.txt)**

```bash
sudo xargs -a packages.txt apt install
```

**To generate a list of installed packages into a file:**

> **Tip:** You can name the file any name.

```bash
sudo dpkg --get-selections > packages.txt
```

**To generate a list of installed Snap packages into a file:**

```bash
snap list --all > snaps.txt
```

**To generate a list of installed NPM packages into a file:**

```bash

```

**To generate a list of installed Ruby Gems packages into a file:**

```bash
gem list > gems.txt
```

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
