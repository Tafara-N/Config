# User Keybindings

## Table of Content
- [Author](#author)
- [Description](#description)
- [Location](#location)
- [Optional](#optional)
- [Ubuntu Shortcuts](ubuntu_shortcuts.md)
- [VS Code Keys: Ubuntu](ubuntu_keybindings.json)
- [VS Code Keys: Windows](windows_keybindings.json)

## Description

## Windows

- [VS Code Windows keys](windows_keybindings.json)

# Ubuntu 24.04

- [VS Code Ubuntu keys](ubuntu_keybindings.json)

## Location

> **Note:** Replace `<YourUsername>` | `$USER` with your user name.

**Windows:**

`C:\Users\<YourUsername>\AppData\Roaming\Code\User\keybindings.json`

**Ubuntu:**

`/home/$USER/.config/Code/User/keybindings.json`

## Optional

```json
  {
    "key": "ctrl+shift+left",
    "command": "workbench.action.terminal.resizePaneLeft"
  },
  {
    "key": "ctrl+shift+right",
    "command": "workbench.action.terminal.resizePaneRight"
  },
  {
    "key": "ctrl+d",
    "command": "editor.action.deleteLines",
    "when": "textInputFocus && !editorReadonly"
  }
```

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
