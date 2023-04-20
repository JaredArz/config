#!/bin/zsh

#load functions
fpath=( $ZDOTDIR/.zfuncs $fpath);
source $ZDOTDIR/.zfuncs/is-macos

# Local settings, misc.
[[ -f $ZDOTDIR/.zmain ]] && source $ZDOTDIR/.zmain

# Load zstyles.
[[ -f $ZDOTDIR/.zstyles ]] && source $ZDOTDIR/.zstyles

# Load plugins
[[ -f $ZDOTDIR/.zplugins ]] && source $ZDOTDIR/.zplugins

# Load aliases.
[[ -f $ZDOTDIR/.zaliases ]] && source $ZDOTDIR/.zaliases

