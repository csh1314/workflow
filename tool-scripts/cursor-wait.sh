   #!/bin/bash

   # Check if the merged file argument is provided
   if [ -z "$1" ]; then
     echo "Usage: cursor-merge-wait.sh <merged-file>"
     exit 1
   fi

   MERGED_FILE="$1"

   # Use AppleScript to open the merged file with Cursor
   osascript <<EOF
   tell application "Cursor"
       open POSIX file "$MERGED_FILE"
       activate
   end tell
EOF
   # Check if the Cursor application is still running
   while true; do
     sleep 1
     if ! pgrep -x "Cursor" > /dev/null; then
       break
     fi
   done