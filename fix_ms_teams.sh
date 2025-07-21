#!/bin/bash

teams_running() {
    pgrep -f "Microsoft Teams" > /dev/null
}

close_teams() {
    echo "Closing Microsoft Teams..."
    pkill -f "Microsoft Teams"
    sleep 2

    if teams_running; then
        echo "Force closing Teams..."
        kill -9 $(pgrep -f "Microsoft Teams")
        sleep 2
    fi
}

delete_folders() {
    echo "Deleting Teams cache and data..."

    # Replace these paths with the actual folders you want to delete
    rm -rf ~/Library/Application\ Support/Microsoft/Teams
    rm -rf ~/Library/Caches/com.microsoft.teams
    rm -rf ~/Library/Group\ Containers/UBF8T346G9.com.microsoft.teams
    rm -rf ~/Library/Containers/com.microsoft.teams2
    echo "Folders deleted."
}

# Check if Teams is running
if teams_running; then
    close_teams
fi

# Ensure Teams is fully closed before deleting files
if ! teams_running; then
    delete_folders
else
    echo "Failed to close Teams, skipping folder deletion."
fi