# Using GNU stow to manage dotfiles

## Table of Content
- [Author](#author)
- [Command Explanations](#command-explanations)
- [Installation](#installation)
- [Set Up](#set-up)
- [Tips](#tips)

## Installation

```bash
sudo apt-get install stow
```

## Set Up

Visit [Dotfiles](https://dotfiles.github.io/) for more information on how to manage and structue your dotfiles.

- Create a directory or repo called `dotfiles` or `.dotfiles`
    - If a repo, then clone it to your machine

- Inside the `dotfiles` directory, create a directory for **each application** you want to manage
    - **Example:**
        - `mkdir -p dotfiles/vim`
        - `mkdir -p dotfiles/ssh`

- Inside each application's directory, create a directory or file for each **config file** you want to manage
    - > **Note:** The directory structure should mirror the home directory
    - **Example:**
        - `mkdir -p dotfiles/vim/.vim`
        - `touch dotfiles/vim/.vimrc`

- Use `stow` to symlink the config files to the respective directories

**OR**

- Manually move the config files to the respective directories
    - **Example:**
        - `mv ~/.vimrc dotfiles/vim/.vimrc`
        - `mv ~/.vim dotfiles/vim/.vim`

## Command Explanations

> **If we pass the `-n` flag it means we are testing ore previewing how the commands will look lik after running**

- `stow -nvt ~ vim`
    - `-n` - Dry run / Preview / Test
    - `-v` - Verbose
    - `-t` - Target directory: The directory where the symlinks will be created, in this case, the home(~) directory
    - `vim` - Application directory
        - `stow -nvSt ~ vim` - Dry run with stow, `S` is enabled by deafult

> **We're actually running the command**

- `stow -vt ~ vim`
    - `-v` - Verbose
    - `-t` - Target directory: The directory where the symlinks will be created, in this case, the home(~) directory
    - `vim` - Application directory

> **Adopt or copy: Previewing, or just Manually do it as well.**

- `stow --adopt -nvt ~ vim`
    - `--adopt` - Adopt or copy the symlinks to the target directory
    - `-n` - Dry run / Preview / Test
    - `-v` - Verbose
    - `-t` - Target directory: The directory where the symlinks will be created, in this case, the home(~) directory
    - `vim` - Application directory

> **Unstowing or removing symlinks**

- `stow -vDt ~ vim`
    - `-v` - Verbose
    - `-D` - Delete or remove the symlinks
    - `-t` - Target directory: The directory where the symlinks will be removed, in this case, the home(~) directory
    - `vim` - Application directory

## Tips

**Example:**

Say we have aliases that we use for `project-a` and `project-b` and we want to manage them using `stow`.

What we can do is create respective directories for each project and then create a file for each alias.

```bash
📦aliases
 ┣ 📂project-a
 ┃ ┗ 📜.bash_aliases
 ┣ 📂project-b
   ┗ 📜.bash_aliases
```

- `stow` does not understand slashes (`/`), so if we try to `aliases/project-a` it will throw an error.
    - `stow: ERROR: Slashes are not permitted in package names`

- Now to stow the aliases for `project-a` or `project-b` we can do the following:
    - First, navigate into the `aliases` directory

```bash
cd aliases
stow -vt ~ project-a
```

- To switch to `project-b` we can do the following:
    - First, navigate into the `aliases` directory
    - Unstow or remove the symlink from `project-a` and then stow `project-b`

```bash
cd aliases
stow -vDt ~ project-a
stow -vt ~ project-b
```

## Author

**Tafara Nyamhunga  - [Github](https://github.com/tafara-n) / [Twitter](https://twitter.com/tafaranyamhunga)**
