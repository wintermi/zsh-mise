#!/usr/bin/env zsh
# shellcheck disable=SC1090

# Exit if the 'mise' command can not be found
if ! (( $+commands[mise] )); then
    echo "WARNING: 'mise' command not found"
    return
fi

# Add 'mise' hooks for 'zsh'
eval "$(mise activate zsh)"

# Completions directory for `mise` command
local COMPLETIONS_DIR="${0:A:h}/completions"

# Only regenerate completions if older than 7 days, or does not exist
if [[ ! -f "$COMPLETIONS_DIR/_mise"  ||  ! $(find "$COMPLETIONS_DIR/_mise" -newermt "7 days ago" -print) ]]; then
    mise completions zsh >| "$COMPLETIONS_DIR/_mise"
fi

# Add completions to the FPATH
typeset -TUx FPATH fpath
fpath=("$COMPLETIONS_DIR" $fpath)
