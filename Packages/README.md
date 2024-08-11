# Ubuntu 24 Installed Packages

**To install packages from this file:**

**File location: `Ubuntu-24.04/packages.txt`**

```bash
sudo xargs -a packages.txt apt install
```

**To generate a list of installed packages into a file:**

> **Tip:** You name the file anyname.

```bash
sudo dpkg --get-selections > packages.txt
```
