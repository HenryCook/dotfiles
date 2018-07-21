#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles				# dotfiles directory
olddir=~/dotfiles_old		        # old dotfiles backup directory
files="vimrc profile bash_profile"      # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir

if [ ! -d $olddir ]; then
    echo "Creating $olddir for backup of any existing dotfiles in ~"
    mkdir -p $olddir
    echo "...done"
fi

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    if [[ ! -L ~/.$file && -f ~/.$file ]]; then
	    echo "Moving any existing dotfiles from ~/ to $olddir"
	    mv ~/.$file $olddir/
    fi
    if [ ! -L ~/.$file ]; then
	    echo "Creating symlink to $file in home directory."
	    ln -s $dir/$file ~/.$file
    fi
done

# Install Vundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  echo "Installing Vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Install Vim plugins
vim +PluginInstall +qall

# Ensure Solarized vim color is present
if [ ! -f ~/.vim/colors/solarized.vim ]; then
  echo "Installing Solarized theme"
  cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
fi
