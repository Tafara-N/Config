# Ubuntu 24 Installed Packages

**To install packages from this file:**

```bash
sudo xargs -a ubuntu_24.txt apt install
```

**To generate a list of installed packages into a file:**

```bash
sudo dpkg --get-selections > filename.txt
```
