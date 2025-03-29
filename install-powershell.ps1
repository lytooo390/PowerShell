# This script automates the installation of PowerShell on a Linux system.

# Update the package list
Write-Host "Updating package list..."
sudo apt update

# Install prerequisites
Write-Host "Installing prerequisites..."
sudo apt install -y wget apt-transport-https software-properties-common

# Import the Microsoft GPG key
Write-Host "Importing Microsoft GPG key..."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# Add the Microsoft repository
Write-Host "Adding Microsoft repository..."
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-focal-prod focal main"

# Update the package list again
Write-Host "Updating package list again..."
sudo apt update

# Install PowerShell
Write-Host "Installing PowerShell..."
sudo apt install -y powershell

# Verify installation
Write-Host "PowerShell installation complete. You can start PowerShell by running 'pwsh'."
