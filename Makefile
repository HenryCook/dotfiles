SHELL=bash

help:
	@echo "Usage: make action"
	@echo ""
	@echo "eg."
	@echo "    make symlinks - Symlinks the dotfiles e.g. .vimrc and .profile"
	@echo "    make brew_packages - Install brew and packages"
	@echo "    make mac_setup - Configures Mac specific settings"
	@echo "    make fresh_install - Installs everything"
	@echo ""

symlinks: 
	@./dotfiles_symlink.sh

brew_packages: 
	@./brew_packages.sh

mac_setup:
	@./mac_osx_config.sh

fresh_install: symlinks mac_setup brew_packages
	@echo "$@ finished!"
