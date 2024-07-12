#!/bin/bash

# Download files from Google Drive
echo "Downloading large files from Google Drive..."

# Example for a single file
curl -L -o <local-file-name> "<google-drive-shareable-link>"

echo "Download completed."
