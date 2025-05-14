#!/bin/bash

# ----- Variables ----- #
DOTFILES_REPO="https://gitlab.com/anmomu92/dotfiles.git"

# Importamos el git bare repo
if [[ -f "/usr/bin/git" ]]; then
    echo ".dotfiles" >>${HOME}/.gitignore
    git clone --bare ${DOTFILES_REPO} ${HOME}/.dotfiles

    function df {
        /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
    }

    df checkout

    if [[ $? == 0 ]]; then
        echo "Dotfiles importados"
    else
        echo "Backing up pre-existing dot files."
        df checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} rm {}
    fi

    df checkout

    df config --local status.showUntrackedFiles no
fi
