#!/bin/bash

echo "Starting System Update..."

echo "Creating Application Folders..."
mkdir -p web_app/logs
mkdir -p web_app/config

echo "Creating config file..."
echo "server_port=8080" > web_app/config/settings.conf || true

echo "--- Server Provisioning Complete ---"

exit 0