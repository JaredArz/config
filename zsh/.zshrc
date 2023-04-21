#!/bin/zsh
#Jared Arzate.
#Modular Intent.
#April 2023
#

#NOTE: Remeber to include a ~/.hushlogin to disable terminal status message

#add function paths
fpath+=$ZDOTDIR/.zfuncs
#declare and then run if success
#probably better way to do this than loading all functions individually
autoload -U is-macos && is-macos
is-macos && autoload -U xmanpage 

# Local settings, misc.
[[ -f $ZDOTDIR/.zlocal ]] && source $ZDOTDIR/.zlocal

# Load plugins
[[ -f $ZDOTDIR/.zplugins ]] && source $ZDOTDIR/.zplugins

# Load aliases.
[[ -f $ZDOTDIR/.zaliases ]] && source $ZDOTDIR/.zaliases
