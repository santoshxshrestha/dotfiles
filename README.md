# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:SantoshShrestha11/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

---

# `Curl command for nvim `

Note: `only for arch in the docker`

```bash
curl -sSL https://raw.githubusercontent.com/SantoshShrestha11/dotfiles/refs/heads/main/bin/.local/scripts/nvim_install| bash
```

```sh
sh <(curl -sSL https://raw.githubusercontent.com/SantoshShrestha11/dotfiles/refs/heads/main/bin/.local/scripts/nvim_install)
```
