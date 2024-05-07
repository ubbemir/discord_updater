# Discord Updater Script

This script automates the process of updating Discord on Ubuntu systems. It downloads the latest version of Discord and installs it automatically.

## Installation

To install the Discord updater script, follow these steps:

1. **Download the Repository**:
   - Click on the green "Code" button above and select "Download ZIP".
   - Extract the downloaded ZIP file to a location of your choice.

2. **Run the Installer Script**:
   - Open a terminal window.
   - Navigate to the directory where you extracted the downloaded ZIP file.
   - Run the installer script by executing the following commands:
     ```bash
     chmod +x install_discord_updater.sh
     ```
     ```bash
     ./install_discord_updater.sh
     ```
	 

3. **After installing**:
   - After installation is complete, you can now delete the downloaded files.
   - The Discord updater script will now run automatically whenever you log in, ensuring that Discord stays up to date.

## Usage

Once installed, the Discord updater script will run automatically in the background whenever you log in to your Ubuntu system. You do not need to manually run the script.
When a Discord update is ready to be installed, a terminal window will appear upon login, prompting you to enter your password.

## Uninstallation

To uninstall the Discord updater script, simply delete the `~/bin/update_discord.sh` file and remove the `~/.config/autostart/discord_updater.desktop` desktop entry.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on GitHub.

## License

This project is licensed under the [MIT License](LICENSE.md).
