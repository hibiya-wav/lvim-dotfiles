#!/bin/bash

version_control_status_check() {
    cd $1

    GIT_STAT_PORCELAIN=$(git status --porcelain)
    DIR_NAME=$(basename "$1")

    if [ -z "$GIT_STAT_PORCELAIN" ]; then 
        echo "$DIR_NAME Dir Clean"
    else
        echo "There are uncommited changes in the $DIR_NAME Dir"
    fi
}

version_control_status_check $HOME/Documents/Resume
version_control_status_check $HOME/Documents/Programming/swe
version_control_status_check $HOME/Documents/Programming/Interviews
version_control_status_check $HOME/Documents/Programming/lvim-dotfiles