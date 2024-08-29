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

> **Tip: Files are in alphabetical order.**

```bash
load-gitignore

Available .gitignore templates:
1. 1C-Bitrix.gitignore
2. 1C.gitignore
3. A-Frame.gitignore
4. AL.gitignore
5. ASPNETCore.gitignore
6. ATE.gitignore
7. ATS.gitignore
8. AWR.gitignore
9. Actionscript.gitignore
10. Ada.gitignore
11. Adobe.gitignore
12. AdvancedInstaller.gitignore
13. AdventureGameStudio.gitignore
14. Agda.gitignore
15. AlteraQuartusII.gitignore
16. Altium.gitignore
17. Amplify.gitignore
18. Android.gitignore
19. AndroidStudio.gitignore
20. Angular.gitignore
21. Anjuta.gitignore
22. Ansible.gitignore
23. AnsibleTower.gitignore
24. ApacheCordova.gitignore
25. ApacheHadoop.gitignore
26. AppBuilder.gitignore
27. AppCode+all.gitignore
28. AppCode+iml.gitignore
29. AppCode.gitignore
30. AppEngine.gitignore
31. AppceleratorTitanium.gitignore
32. AptanaStudio.gitignore
33. Arcanist.gitignore
34. ArchLinuxPackages.gitignore
35. Archive.gitignore
36. Archives.gitignore
37. Assembler.gitignore
38. Astro.gitignore
39. AtmelStudio.gitignore
40. Audio.gitignore
41. Autohotkey.gitignore
42. AutomationStudio.gitignore
43. Autotools+strict.gitignore
44. Autotools.gitignore
45. AzureFunctions.gitignore
46. Azurite.gitignore
47. Backup.gitignore
48. Ballerina.gitignore
49. Basic.gitignore
50. Batch.gitignore
51. Bazaar.gitignore
52. Bazel.gitignore
53. BitTorrent.gitignore
54. Bitrise.gitignore
55. Bitrix.gitignore
56. Blackbox.gitignore
57. Blender.gitignore
58. Bloop.gitignore
59. Bookdown.gitignore
60. Bower.gitignore
61. BricxCC.gitignore
62. Buck.gitignore
63. C++.gitignore
64. C.gitignore
65. CFWheels.gitignore
66. CLion+all.gitignore
67. CLion+iml.gitignore
68. CLion.gitignore
69. CMake.gitignore
70. CRBasic.gitignore
...
...
...
...
...
...
...
550. macOS.gitignore
551. mule.gitignore
552. nova.gitignore
553. now.gitignore
554. oXygenXMLEditor.gitignore
555. pH7CMS.gitignore
556. pico8.gitignore
557. premake-gmake.gitignore
558. puppet-librarian.gitignore
559. pydev.gitignore
560. react.gitignore
561. replit.gitignore
562. retool.gitignore
563. robotframework.gitignore
564. rust-analyzer.gitignore
565. vRealizeOrchestrator.gitignore
566. vcpkg.gitignore
567. venv.gitignore
568. vs.gitignore
569. xmake.gitignore
570. yalc.gitignore
571. yarn.gitignore
572. zig.gitignore
Select a template by number: 375
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
