#!/bin/bash
#-----------------------------------------------------
# install.sh
# This script creates symlinks from the home directory
# to any dotfiles in ~/dotfiles
#-----------------------------------------------------

########## Variables

dir=~/dotfiles          # dotfiles directory
olddir=~/dotfiles_old   # old dotfiles backup directory
files="zshrc" # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
printf "Creating %s for backup of any existing dotfiles in ~" "$olddir"
mkdir -p $olddir && printf "...done\n"

# change to the dotfiles directory
printf "Changing to the %s directory" "$dir"
cd $dir && printf "...done\n"

# move any existing dotfiles in homedir to dotfiles_old directory,
# then create symlinks
printf "Moving any existing dotfiles from ~ to %s\n" "$olddir"
for file in $files; do
    mv ~/.$file ~/dotfiles_old/ && printf "Moved ~/.%s to ~/dotfiles_old\n" "$file"
    ln -s $dir/$file ~/.$file && printf "Linked ~/.%s to %s/%s\n" "$file" "$dir" "$file"
done
