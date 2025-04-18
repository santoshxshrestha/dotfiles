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
$ git clone git@github.com:santoshxshrestha/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

---

# `Curl command for quick nvim `

Note: `only for arch in the docker`
`sync the package database without upgrading installed packages`
`or upgrate them before running the commands below`

```bash
curl -sSL https://raw.githubusercontent.com/santoshxshrestha/dotfiles/refs/heads/main/bin/.local/scripts/nvim_install_for_docker_arch| bash
```

```sh
sh <(curl -sSL https://raw.githubusercontent.com/santoshxshrestha/dotfiles/refs/heads/main/bin/.local/scripts/nvim_install_for_docker_arch)
```

---

# `Packages`

```bash
bash <(curl -sSL https://raw.githubusercontent.com/santoshxshrestha/dotfiles/refs/heads/main/bin/.local/scripts/packages)

```

---
