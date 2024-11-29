# Define path to lesspipe
export LESSOPEN="| /usr/local/bin/lesspipe.sh %s"

# Define zoxide command
export ZOXIDE_CMD_OVERRIDE="cd"

# Use bat as a pager for man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# fix formatting for man pages when using bat as a pager
export MANROFFOPT="-c"

eval "$(atuin init zsh --disable-up-arrow)"

eval "$(keychain --eval --quiet id_ed25519)"