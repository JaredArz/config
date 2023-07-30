#!/bin/bash

#use hyprctl to change workspace to current +1 but only if the current workspace is nonempty

#hyprland v0.24.1

#Regex to match workspaces from hyprctl workspaces
regex="ID ([0-9]+)"
IDs=()


if [ $(hyprctl activewindow) == "Invalid" ]; then
    while read -r line; do
        if [[ $line =~ $regex ]]; then
            IDs+=("${BASH_REMATCH[1]}")
        fi
    done <<< $(hyprctl workspaces)

    highest_workspace=${IDs[0]}
    for i in "${IDs[@]}"; do
        if [ $i -gt $highest_workspace ]; then
            highest_workspace=$i
        fi
    done

    current_workspace=$(hyprctl activeworkspace | grep -oP "$regex" | grep -oP "[0-9]+")

    if [ $highest_workspace -eq $current_workspace ]; then
        !
        #hyprctl dispatch workspace previous
    else 
        hyprctl dispatch workspace e+1
    fi
else
    hyprctl dispatch workspace +1
fi
