#!/bin/bash

# Check if the commit message file argument is provided
if [ -z "$1" ]; then
  echo "Usage: cursor-wait.sh <commit-message-file>"
  exit 1
fi

COMMIT_MSG_FILE="$1"

# Use AppleScript to open the commit message file with Cursor
osascript <<EOF
tell application "Cursor"
    open POSIX file "$COMMIT_MSG_FILE"
    activate
end tell
EOF

echo
echo "Please close the file in Cursor after editing. Press any key to continue..."
read -n 1 -s