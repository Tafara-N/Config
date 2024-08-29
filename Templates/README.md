# Basic Templates for Projects

## Table of Content
- [Author](#author)
- [Basic Usage](#basic-templates-usage)
- [Description](#description)
- [List Of Templates](#list-of-templates)
- [Packages](Packages/README.md#packages)
- [Structure](#on-ubuntu)
- [Set Up](#set-up)

## Description

- Git ignore
- FrameWork
- Projects
- Language Versions: Version Managers
- Project Requirements

## List Of Templates

**Django: Basic layout HTML file.**

- [Django: layout.html](Django/layout.html)
___

**Flask: Basic base HTML file.**

- [Flask: base.html](Flask/base.html)
___

**Basic Project Config Files.**

- [List Of Basic Config Files](config/)
___

**Git ignore Templates: Language or Project specific.**

- [Git ignore templates](gitignore/templates/)
___

**Makefile Template**

- [Makefile](Makefile)

## Basic Templates Usage

**Shows how to use some of the templates**

> **Use with these scripts [load_config](../Scripts/Python/load_config.py), [load_gitignore](../Scripts/Python/load_gitignore.py) or just copy and paste them.**

> **File usage: [README](../Scripts/README.md)**

1. **Download The Files**

```bash
wget https://raw.githubusercontent.com/Tafara-N/Config/main/Scripts/Python/load_config.py
wget https://raw.githubusercontent.com/Tafara-N/Config/main/Scripts/Python/load_gitignore.py
```

OR

```bash
curl -O https://raw.githubusercontent.com/Tafara-N/Config/main/Scripts/Python/load_config.py
curl -O https://raw.githubusercontent.com/Tafara-N/Config/main/Scripts/Python/load_gitignore.py
```
__

2. **Lets you run the script from anywhere**

```bash
sudo cp path/to/file/load_config.py /usr/local/bin/load-config
sudo cp path/to/file/load_gitignore.py /usr/local/bin/load-gitignore
```

> **Replace `path/to/file/` with the actual file path to the file.**
____

3. **Load [Config Files](config/)**

```bash
load-config

Available configuration files:
1. .editorconfig
2. .flake8
3. .nvmrc
4. .pycodestyle
5. .python-version
6. .ruby-version
7. setup.cfg
Select a configuration file by number: 1
Loaded .editorconfig into the current directory

ls -la

    rw-rw-r--    1   <$USER>   <$GROUP>    921 B     Tue Aug 13 23:39:18 2024    .editorconfig
```

4. **Load [Git Ignore Templates](gitignore/templates/)**

```bash
load-gitignore
Available .gitignore templates:
1. NotepadPP.gitignore
2. fastlane.gitignore
3. HomeAssistant.gitignore
4. Csharp.gitignore
5. ElasticBeanstalk.gitignore
6. Bazaar.gitignore
7. TextMate.gitignore
8. EPiServer.gitignore
9. vs.gitignore
10. OCaml.gitignore
11. Text.gitignore
...
...
...
566. Flatpak.gitignore
567. TurboGears2.gitignore
568. Diff.gitignore
569. AlteraQuartusII.gitignore
570. SAM.gitignore
571. Angular.gitignore
Select a template by number: 206
Loaded Python.gitignore into .gitignore

ls -la

    rw-rw-r--    1   <$USER>   <$GROUP>      3 KiB   Tue Aug 13 23:42:10 2024   .gitignore
```

## On Ubuntu:

- [**Templates Structure**](structure.md)
___

## To generate a tree view

**On Linux: Use the tree command**

```bash
tree
```

To display only the directories and not their contents using the tree command, you can use the `-d` flag. This flag tells tree to list directories only.

Here's the command:

```bash
tree -d
```

If you want to limit the depth of the directory tree, you can use the `-L` flag followed by the desired depth level. For example, to display directories up to a depth of 2:

```bash
tree -d -L 2
```

## OR use the VS Code Extenstion

### [file-tree-generator](https://marketplace.visualstudio.com/items?itemName=Shinotatwu-DS.file-tree-generator)

1. Right-click on the folder for which you want to generate a tree.
2. Click `Generate to tree`.

Once you generate the directory structure, you can select the output and copy it.

If you want to remove the icons, click on the `icon off` button.

Now, paste the output into your markdown file and don't forget to wrap it in three backticks or  the `<pre></pre>` tag if you can't get the backtick characters to work.
___

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
