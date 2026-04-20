# My Linux dotfiles

**Prerequisite:** You need to have [GNU Stow](https://www.gnu.org/software/stow/) installed on your system before using this repository.  
Install stow with apt: `sudo apt install stow`

## Install

Clone the repository in your home directory and stow the dotfiles you need:

```sh
git clone git@github.com:gvnadir/dotfiles-linux.git ~/dotfiles/
cd ~/dotfiles
stow --target=$HOME ubuntu 
#or 
stow --target=$HOME omarchy

# to stow specific files
stow --target=$HOME --ignore='ghostty' --ignore='alacritty' ubuntu
```

## Dump and load gnome-extensions configurations

```sh
# dump
dconf dump /org/gnome/shell/extensions/ > ~/dotfiles/ubuntu/gnome-extensions.dconf

#load
dconf load /org/gnome/shell/extensions/ < ~/dotfiles/ubuntu/gnome-extensions.dconf
```
