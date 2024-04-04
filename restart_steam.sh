#!/bin/bash

# Use sudo to kill Steam process (replace 'steam' with actual process name)
sudo pkill -f steam

# Display notification
notify-send "Steam" "Killed steam app, restarting..."

# Use nohup with bash -c "..." to keep session alive
nohup bash -c "steam >/dev/null 2>&1" &

# Exit script (script exits but session remains)
exit 0
