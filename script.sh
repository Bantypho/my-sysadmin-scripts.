#!/usr/bin/env bash

INTERVAL=10
LOG_FILE="monitor.log"

for cmd in date free df uptime sleep; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "Error: required command '$cmd' was not found." >&2
        exit 1
    fi
done

while true; do
    {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
        free -h || echo "[ERROR] free command failed"
        df -h || echo "[ERROR] df command failed"
        uptime || echo "[ERROR] uptime command failed"
        echo
    } >> "$LOG_FILE" 2>&1

    sleep "$INTERVAL"
done
