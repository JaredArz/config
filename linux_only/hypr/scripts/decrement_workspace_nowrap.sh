#!/bin/bash

#use hyprctl to change workspace to current +1 but only if the current workspace is nonempty

#hyprland v0.24.1

#Regex to match workspaces from hyprctl workspaces
regex="ID ([0-9]+)"
IDs=()


if [ $(hyprctl activewindow) == "Invalid" ]; then

    current_workspace=$(hyprctl activeworkspace | grep -oP "$regex" | grep -oP "[0-9]+")

    if [ $current_workspace -eq 1 ]; then
        hyprctl dispatch workspace -1
    else 
        hyprctl dispatch workspace e-1
    fi
else
    hyprctl dispatch workspace -1
fi
