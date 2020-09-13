#! /usr/bin/env bash

###################################################################################################
###################################################################################################
### Git repository update script for Happy-Dude's dotfiles repository
###
### Author: Stanley Chan
### Github: https://github.com/Happy-Dude/dotfiles.git
### Version: 14 April 2013
###
### Based on information from:
###	Christophe Portneuve:	https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407
###
###################################################################################################
###################################################################################################


# Check if Git is installed update all submodules
`which git` --version 2>&1 >/dev/null # improvement by tripleee
GIT_IS_AVAILABLE=$?

if [ $GIT_IS_AVAILABLE -eq 0 ]; then
    GIT_PATH=`which git`
    GIT_OPTS="submodule foreach --recursive"

    echo "Git found: pulling latest updates for Happy-Dude's dotfiles repo"
    $GIT_PATH pull
    $GIT_PATH submodule sync --recursive
    $GIT_PATH submodule update --init --recursive
    $GIT_PATH submodule update --remote --rebase --
    # $GIT_PATH $GIT_OPTS $GIT_PATH $GIT_OPTS $GIT_PATH pull
    #$GIT_PATH $GIT_OPTS $GIT_PATH pull

else
    echo "Git not found\; please get latest updates for repository submodules manually"
fi
