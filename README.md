# Dotfiles

This is where I store my dotfiles and other personal bits of config I use for provisioning my environment.


## Fresh Install

If you're looking for a fresh install, use the one-liner below:

```
git clone https://github.com/HenryCook/dotfiles.git ~/dotfiles && cd ~/dotfiles && make fresh_install
```

## Usage

I've created a Makefile which takes care of the installation of each component for me:

```
Usage: make action

eg.
    make symlinks - Symlinks the dotfiles e.g. .vimrc and .profile
    make brew_packages - Install brew and packages
    make mac_setup - Configures Mac specific settings
    make fresh_install - Installs everything
```

## Management

### Dotfiles

Symlinks are created for `bash_profile`, `bashrc`, `profile` and `vimrc` from this dir to `~/.$dotfile`. If you want to add a new dotfile you just need to create one and add it to `dotfiles_symlinks.sh`

### Brewfile

A brewfile is used to manage the Homebrew packages, edit the `brewfiles` file to manage these packages.

### Mac OS X Config

The Mac OS X config is managed via the `mac_osx_config.sh`.
