#!/usr/bin/env bash

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$XDG_CONFIG_HOME/quickshell"

source $CONFIG_DIR/.venv/bin/activate
"$SCRIPT_DIR/find_regions.py" "$@"
deactivate