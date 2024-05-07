#!/bin/bash

target_file="discord_latest.deb"
update_url="https://discord.com/api/download?platform=linux&format=deb"

check_update_needed() {
    echo "Checking for updates..."
    current_version=$(dpkg -l | grep discord | awk '{print $3}')
    latest_version=$(wget -O "$target_file" "$update_url" 2>&1 | grep -m 1 -oP '(?<=discord-)[0-9.]+(?=.deb)')
    
    if [[ "$current_version" == "$latest_version" ]]; then
        echo "Discord is already up to date. No update needed."
        rm "$target_file"
        exit 0
    else
        echo "Update is available. Proceeding with update..."
    fi
}

download_discord() {
    echo "Downloading the latest Discord .deb file..."
    wget -O "$target_file" "$update_url"
}

update_discord() {
    echo "Updating Discord..."
    sudo dpkg -i "$target_file"
}

main() {
    check_update_needed
    download_discord
    update_discord
    echo "Update complete."
    rm "$target_file"
}

main
