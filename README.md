# My Linux dotfiles

⚠️ **Prerequisite:** You need to have [GNU Stow](https://www.gnu.org/software/stow/) installed on your system before using this repository.  
`sudo apt install stow`

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
