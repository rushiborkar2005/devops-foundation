#!/bin/bash

# 1. Update the System
echo "Starting System Update..."
# sudo apt-get update

# 2. Create Directory Structure
echo "Creating Application Folders..."
mkdir -p web_app/logs
mkdir -p web_app/config

# 3. Create Config File
echo "server_port=8080" > web_app/config/settings.conf

echo "--- Server Provisioning Complete ---"

