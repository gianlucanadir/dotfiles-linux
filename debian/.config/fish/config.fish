# Disable the default welcome message on shell startup
set fish_greeting

# Enable 256-color support in the terminal
set TERM xterm-256color

# Set Helix as the default editor (used by git, crontab, etc.) and export it globally
# set -gx EDITOR hx

# Follow the XDG Base Directory spec for config file locations
set -gx XDG_CONFIG_HOME $HOME/.config

# Load sensitive variables (API tokens, passwords) from a separate file, only if it exists
if test -f $HOME/.config/fish/secrets.fish
    source $HOME/.config/fish/secrets.fish
end

# Prepend custom binary directories to PATH, avoiding duplicates automatically
fish_add_path -m $HOME/.bin $HOME/.local/bin $HOME/go/bin /usr/local/bin /usr/local/go/bin $fish_user_paths

# Load aliases from a dedicated file
source $HOME/.config/fish/aliases.fish

# Custom function: create a directory and cd into it in one step
function mkcd
    mkdir -p $argv
    and cd $argv
end

# Enable fzf key bindings and completions (Ctrl+R history search, Ctrl+T file finder, etc.)
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install
fzf --fish | source

# Activate mise for runtime version management (Node, Python, Ruby, Go, etc.)
# curl https://mise.run | sh   
# mise activate fish | source

# Initialize zoxide, a smarter cd that learns your most visited directories
# sudo apt install zoxide
zoxide init fish | source

# Initialize Starship, a fast and customizable cross-shell prompt
# starship init fish | sourceif status is-interactive
