
Overview
This repository contains a Bash script designed to automate the installation of GrapheneOS on any Google PIXEL device. The script performs necessary system updates, installs required packages, and guides the user through the flashing process.
Prerequisites
Before running the script, ensure you have the following:
 * A computer running a Debian-based Linux distribution (e.g., Ubuntu).
 * A Pixel device.
 * USB cable to connect your device to the computer.
 * Basic knowledge of using the terminal.
Installation Steps
 1. Update and Upgrade System Packages
 sudo apt update 
 sudo apt upgrade -y
 2. Install Required Packages
 sudo apt install -y ufw openssh-client curl libarchive-tools
 sudo ufw enable
 3. Download GrapheneOS Release
 * The script fetches the latest version of GrapheneOS for the Pixel device.
 * It creates necessary directories for storing downloaded files.
 4. Verify Signatures
 * The script downloads and verifies the allowed signers for GrapheneOS to ensure the integrity of the installation files.
 5. Download Installation Files
 * The script downloads the installation zip files and OTA updates for GrapheneOS.
 6. Prepare the Device
 * Follow the on-screen instructions to unlock the bootloader of your Pixel device.
 7. Flash GrapheneOS
 * The script unpacks the installation files and executes the flashing process.
 8. Lock the Bootloader
 * After installation, the bootloader is locked again for security.
Usage

To run the script, FOR EXAMPLE FOR A PIXEL model 10: 
(change for your PIXEL model accordingly)

execute the following command in your terminal:

-------------------------------------------------------------------------------

bash PIXEL10.sh

Follow the prompts provided by the script to complete the installation process.

-------------------------------------------------------------------------------

Important Notes
 * Backup Your Data: Flashing a new OS will erase all data on your device. Ensure you have backed up any important information.
 * Verify Boot: After installation, use the attestation features provided by GrapheneOS to verify the integrity of your installation.
Conclusion
This script simplifies the installation of GrapheneOS on your Pixel device. By following the steps outlined above, you can ensure a smooth installation process. For any issues or questions, please refer to the official GrapheneOS documentation or seek help from the community.
