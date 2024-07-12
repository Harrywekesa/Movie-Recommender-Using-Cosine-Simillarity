#!/bin/bash

# Download files from Google Drive
echo "Downloading files from Google Drive..."

# List of files and their respective Google Drive links
declare -A files
files=(
  ["rating.csv"]="https://drive.google.com/file/d/1oSuATe965VRX_yKRJhabwiylOTj2LTXS/view?usp=drive_link?id=rating.csv&export=download"
  ["movie.csv"]="https://drive.google.com/file/d/1jcGysdgCbWoTLUgcsjtrVsoC3b8hb3w-/view?usp=drive_link?id=movie.csv&export=download"
  #["file3.zip"]="https://drive.google.com/uc?id=FILE_ID_3&export=download"
  # Add more files as needed
)

# Create a folder to store the downloaded files
mkdir -p dataset

# Download each file
for file in "${!files[@]}"; do
  echo "Downloading $file..."
  curl -L -o "downloaded_files/$file" "${files[$file]}"
done

echo "All files downloaded."
