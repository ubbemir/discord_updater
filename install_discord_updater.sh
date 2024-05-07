#!/bin/bash

update_script_name="update_discord.sh"

install_discord_update_script() {
    echo "Installing Discord update script..."
    mkdir -p ~/bin
    cp "$update_script_name" ~/bin/
    chmod +x ~/bin/"$update_script_name"
}

create_autostart_desktop_entry() {
    echo "Creating autostart desktop entry..."
    mkdir -p ~/.config/autostart
    cat <<EOF > ~/.config/autostart/discord_updater.desktop
[Desktop Entry]
Type=Application
Exec=gnome-terminal -- ~/bin/"$update_script_name"
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Discord Updater
EOF
}


main() {
    install_discord_update_script
    create_autostart_desktop_entry
    echo "Installation complete."
}

main
