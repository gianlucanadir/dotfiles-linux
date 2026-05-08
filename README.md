# My Linux dotfiles

**Prerequisite:** You need to have [GNU Stow](https://www.gnu.org/software/stow/) installed on your system before using this repository.  
Install stow with apt: `sudo apt install stow`

## Install

Clone the repository in your home directory and stow the dotfiles you need:

```sh
git clone git@github.com:gvnadir/dotfiles-linux.git ~/dotfiles/
cd ~/dotfiles
# stow ubuntu's dotfiles
stow --target=$HOME ubuntu 

# to stow specific files from ubuntu
stow --target=$HOME --ignore='ghostty' --ignore='alacritty' ubuntu
```

### Dump and load gnome-extensions configurations

```sh
# dump
dconf dump /org/gnome/shell/extensions/ > ~/dotfiles/ubuntu/gnome-extensions.dconf

#load
dconf load /org/gnome/shell/extensions/ < ~/dotfiles/ubuntu/gnome-extensions.dconf
```

### Dump and load gnome-shortcuts

```sh
# dump
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > ~/.dotfiles/gnome-shortcuts.dconf

#load
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ~/.dotfiles/gnome-shortcuts.dconf
```

