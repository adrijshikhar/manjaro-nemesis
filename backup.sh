#!/bin/bash

backup_dir="$PWD/dotfiles"

config_folder="$HOME/.config"

declare -a HOME_FILES=(".i3" ".Xresources" "ssh-add.sh" ".gitconfig" ".dmenurc" ".doom.d")
declare -a CONFIG_FILES=("dunst" "picom" "nano" "polybar" "rofi" "tilix" "fish" "spicetify" "alacritty" )


if [ -d $backup_dir ]
then
    echo "Old data exists, removing it"
    rm -rf "$backup_dir"
    echo "Backup folder deleted"
fi

echo "Creating directory for new data"
mkdir "$backup_dir"


echo "Copying files in home dir"

for f in "${HOME_FILES[@]}"
do
    rsync -a --progress "$HOME/$f" $backup_dir
done


echo "Copying files in .config dir"

for f in "${CONFIG_FILES[@]}"
do
    rsync -a --progress "$config_folder/$f" "$backup_dir/.config"
done


if [ $# -eq 0 ]
then
    echo "No arguments supplied"
else
    if [ $1 == "upload" ]
    then
        git add .
        git commit -m "$(date)"
        git push origin master
    fi
fi
