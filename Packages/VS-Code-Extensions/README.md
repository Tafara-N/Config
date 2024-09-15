# A list of installed VS Code Extensions

## Table of Content
- [Author](#author)
- [Description](#description)
- [Configuration](#configurations)
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

## Configurations

**autoDocstring - Python Docstring Generator**

- These are configurations for the Python autoDocstring Generator extension.

- More configurations for the docstringFormat can be found [here](pep257.mustache)
     - It's a custom template for the PEP257 docstring format.

```json
  "auto-close-tag.enableAutoCloseTag": true,
  "autoDocstring.customTemplatePath": "path/to/pep257.mustache",
  "autoDocstring.docstringFormat": "pep257",
  "autoDocstring.guessTypes":true,
  "autoDocstring.includeName": false,
  "autoDocstring.startOnNewLine": true,
```

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
