#!/bin/bash

# Define the idle timeout (in seconds)
IDLE_TIMEOUT=600 # 10 minutes

# Monitor for user input events in the background
xinput test | grep -q 'button' &

# Wait for the specified timeout
sleep $IDLE_TIMEOUT

# Lock the screen using hyprlock
hyprlock

# Optional: Unset the input monitoring process
pkill -f 'xinput test'
