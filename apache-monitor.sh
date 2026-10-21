



#!/bin/bash

SERVICE="apache2"

echo "Checking Apache service status..."

if systemctl is-active --quiet "$SERVICE"; then
    echo "SUCCESS: Apache is running."
else
    echo "WARNING: Apache is stopped. Attempting to restart..."

    if sudo systemctl restart "$SERVICE" &&
       systemctl is-active --quiet "$SERVICE"; then
        echo "SUCCESS: Apache restarted successfully."
    else
        echo "ERROR: Apache could not be restarted."
        exit 1
    fi
fi


