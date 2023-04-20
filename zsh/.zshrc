#!/bin/zsh
#Jared Arzate.
#Modular Intent.
#April 2023

#add function paths
fpath=( $ZDOTDIR/.zfuncs $fpath);
#load individual functions, maybe find better way
source $ZDOTDIR/.zfuncs/is-macos

# Local settings, misc.
[[ -f $ZDOTDIR/.zlocal ]] && source $ZDOTDIR/.zlocal

# Load plugins
[[ -f $ZDOTDIR/.zplugins ]] && source $ZDOTDIR/.zplugins

# Load aliases.
[[ -f $ZDOTDIR/.zaliases ]] && source $ZDOTDIR/.zaliases
