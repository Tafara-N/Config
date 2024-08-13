# A list of installed VS Code Extensions

## Table of Content
- [Author](#author)
- [Description](#description)
- [To generate extensions list](#to-generate-a-list-of-the-extensions)
- [To install from the file](#to-install-the-extensions-from-the-file)
- [VS Code: Extensions](vscode-extensions.list)
- [VS Code: Extensions with versions](vscode-extensions-version.list)

## Description

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

```pwsh
Get-Content vscode-extensions.list | ForEach-Object { code --install-extension $_ }
```

**On Ubuntu:**

```bash
cat vscode-extensions.list | xargs -L 1 code --install-extension
```
