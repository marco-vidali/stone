#!/bin/bash

# --- Variables ---
CONFIG_FILE="/boot/stone-config.txt"
SCRIPTS_DIR="./scripts"

# --- Main ---
mapfile -t lines < "$CONFIG_FILE"

SCRIPT_NAME="${lines[0]}"
SCRIPT_PATH="$SCRIPTS_DIR/$SCRIPT_NAME"
ARGS=("${lines[@]:1}")

"$SCRIPT_PATH" "${ARGS[@]}"