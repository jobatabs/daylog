# daylog

daylog is a small script that saves logs into their own little transportable files, which can be used to log progress, make notes, even keep a diary! (If one would want to keep a diary through the terminal)

Licensed under MIT.

# Installation

You can install daylog by running the install script: `sudo ./install.sh`.

The install script takes some options:

`--PREFIX=/some/path` Where to install the program itself (in this case, `/some/path/dl`).

`--STORAGE=~/Documents/logs` Where to put any files written with daylog.

`--MAN_LOC=/usr/share/man/man1` Where to install daylog's manpage, if you use an abnormal system.

None of these options are required; daylog uses sensible defaults: the program is installed to `/usr/local/bin/dl`, logs are stored in `~/.dl/logs`, and the manpage is copied to `/usr/share/man/man1/dl.1`.

If you want to change where daylog stores its logs later, you can use the config file installed to `~/.dl/daylog.conf`. At the moment, that's all the config file has.

# Usage

daylog is started by entering `dl` into your prompt. This starts daylog in interactive mode.

## Options

`-r` Interactive read mode. Writing logs not supported.

`-w` Write a log. Reading logs is not supported,

`-rv` Open the .dl folder (where daylog saves your logs) in Finder. (OS X only)

`-rl` List all logs to stdout.

`-rs *NAME*` Search for logs and (if a single match is found) print the log to stdout.
