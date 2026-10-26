# System Resource Monitor

A simple Bash script for periodic system resource monitoring.

## Features

- Displays RAM usage with `free -h`.
- Displays filesystem usage with `df -h`.
- Records system uptime and load averages with `uptime`.
- Appends timestamped results to `monitor.log`.
- Checks required commands before starting and logs command failures.

## Usage

Make the script executable and run it:

```bash
chmod +x script.sh
./script.sh
```

The script records system information every 10 seconds.
Press Ctrl+C to stop it.

The log file is created in the current working directory.
