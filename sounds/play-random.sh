#!/bin/bash
SOUNDS_DIR="$(dirname "$0")"
FILES=("$SOUNDS_DIR"/*.mp3)
RANDOM_FILE="${FILES[RANDOM % ${#FILES[@]}]}"
afplay "$RANDOM_FILE" &
