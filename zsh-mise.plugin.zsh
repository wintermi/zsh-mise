#!/usr/bin/env zsh
# shellcheck disable=SC1090

# Exit if the 'mise' command can not be found
if ! (( $+commands[mise] )); then
    echo "WARNING: 'mise' command not found"
    return
fi

# Add 'mise' hooks to the zsh shell
eval "$(mise activate zsh)"

# Completions directory for `mise` command
local COMPLETIONS_DIR="${0:A:h}/completions"

# Add completions to the FPATH
typeset -TUx FPATH fpath
fpath=("$COMPLETIONS_DIR" $fpath)

# If the completion file does not exist yet, then we need to autoload
# and bind it to `mise`. Otherwise, compinit will have already done that.
if [[ ! -f "$COMPLETIONS_DIR/_mise" ]]; then
    typeset -g -A _comps
    autoload -Uz _mise
    _comps[mise]=_mise
fi

# Generate and load completion in the background
mise completions zsh >| "$COMPLETIONS_DIR/_mise" &|
