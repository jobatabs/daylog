# daylog

Just a small script to keep a log what you've done, easily installed by running `sudo install.sh`.

Licensed under MIT.

# Usage

`daylog` is started by entering `dl` into your prompt. This starts daylog in interactive mode.

## Options

`-r` Interactive read mode. Writing logs not supported.

`-w` Write a log. Reading logs is not supported,

`-rv` Open the .dl folder (where daylog saves your logs) in Finder. (OS X only)

`-rl` List all logs to stdout.

`-rs *NAME*` Search for logs and (if a single match is found) print the log to stdout.

# Notes

Your logs are saved to `~/.dl/logs`.
