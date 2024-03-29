#!/bin/bash

# Check if an app name was provided
if [ -z "$1" ]; then
  echo "Usage: macuninstall <app-name>"
  exit 1
fi

appName=$1
declare -a dirs=(
  "~/Library/Application Support"
  "~/Library/Caches"
  "~/Library/Preferences"
  "~/Library/Logs"
  "~/Library/Cookies"
  "/Applications"
  "~/Library/Saved Application State"
  "~/Library/Application Scripts"
  "~/Library/Containers"
  "/Library/Application Support"
  "~/Library/Group Containers"
  "~/Library/Mail"
  "~/Library/Messages"
  "~/Library/LaunchAgents"
  "/Library/LaunchAgents"
  "/Library/LaunchDaemons"
)

echo "Searching for files related to $appName..."
tempFile="$(mktemp)"

# Search for files and add them to a temporary file
for dir in "${dirs[@]}"; do
  find $dir -name "*$appName*" -type f 2>/dev/null >> "$tempFile"
done

# Check if the temp file is empty
if [ ! -s "$tempFile" ]; then
  echo "No files related to $appName were found."
  exit 0
fi

# Display found files to the user
echo "The following files related to $appName will be deleted:"
cat "$tempFile"
echo

# Ask for user confirmation
read -p "Do you want to proceed with deletion? (y/n) " confirm

if [[ "$confirm" = "y" || "$confirm" = "Y" ]]; then
  # Read the temp file line by line and delete each file
  while IFS= read -r line; do
    echo "Deleting $line..."
    rm -rf "$line"
  done < "$tempFile"
  echo "$appName has been successfully uninstalled."
else
  echo "Uninstallation cancelled."
fi

# Clean up
rm "$tempFile"
