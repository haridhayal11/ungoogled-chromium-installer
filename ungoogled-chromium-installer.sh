#!/bin/bash
#Ungoogled-Chromium Portable Install script

# Clean Old versions
sudo rm -rf /opt/ungoogled-chromium_*/
sudo rm -rf /opt/ungoogled-chromium

# Copy New version
sudo tar -xvf ungoogled-chromium_*.tar.xz -C /opt
sudo cp -r ungoogled-chromium.desktop /usr/share/applications/
sudo chown root:root /usr/share/applications/ungoogled-chromium.desktop
sudo chmod 644 /usr/share/applications/ungoogled-chromium.desktop
sudo chown -R root:root /opt/ungoogled-chromium_*/
sudo mv -vuf /opt/ungoogled-chromium_*/chrome_sandbox /opt/ungoogled-chromium_*/chrome-sandbox
sudo chmod 4775 chrome-sandbox
sudo ln -s /opt/ungoogled-chromium_*/chrome-wrapper /opt/ungoogled-chromium
