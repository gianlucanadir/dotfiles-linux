alias reload='source $HOME/.config/fish/config.fish'
alias la='ls -la'

# sudo apt install lsd
if type -q lsd
    alias ls='lsd'
end

# sudo apt install bat
if type -q bat
    alias cat='bat'
else if type -q batcat
    alias cat='batcat'
end
