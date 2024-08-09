# A list of installed VS Code Extensions

## To generate a list of the extensions

**On Windows:**

```bash
code --list-extensions > vscode-extensions.list
```

**On Ubuntu:**

```bash
code --list-extensions > vscode-extensions.list
```

## To install the extensions from the file

> **Note:** In Powershell

**On Windows**

```bash
Get-Content vscode-extensions.list | ForEach-Object { code --install-extension $_ }
```

**On Ubuntu:**

```bash
cat vscode-extensions.list | xargs -L 1 code --install-extension
```
