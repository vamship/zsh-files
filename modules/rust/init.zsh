# Make sure that rust is installed
if (( ! $+commands[cargo] )); then
    return 1
fi

# Configure rust path
path=($HOME/.cargo/bin $path)

# Source module files.
source "${0:h}/alias.zsh"
