SHELL=bash

help:
	@echo "Usage: make action"
	@echo ""
	@echo "eg."
	@echo "    make symlinks - Symlinks the dotfiles e.g. .vimrc and .profile"
	@echo "    make brew_packages - Install brew and packages"
	@echo "    make fresh_install - Installs everything"
	@echo ""

symlinks: 
	@./dotfiles_symlink.sh

brew_packages: 
	@./brew_packages.sh

fresh_install: symlinks brew_packages 
	@echo "$@ finished!"
