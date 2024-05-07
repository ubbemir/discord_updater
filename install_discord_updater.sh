#!/bin/bash

update_script_name="update_discord.sh"
install_dir="$HOME/bin"

install_discord_update_script() {
    echo "Installing Discord update script..."
    mkdir -p "$install_dir"
    cp "$update_script_name" "$install_dir/"
    chmod +x "$install_dir/$update_script_name"
}

create_autostart_desktop_entry() {
    echo "Creating autostart desktop entry..."
    autostart_dir="$HOME/.config/autostart"
    mkdir -p "$autostart_dir"
    cat <<EOF > "$autostart_dir/discord_updater.desktop"
[Desktop Entry]
Type=Application
Exec=gnome-terminal -- "$install_dir/$update_script_name"
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
