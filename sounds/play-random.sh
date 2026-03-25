#!/bin/bash
SOUNDS_DIR="$(dirname "$0")"
FILES=("$SOUNDS_DIR"/*.mp3)
RANDOM_FILE="${FILES[RANDOM % ${#FILES[@]}]}"

case "$(uname -s)" in
  Darwin)
    afplay "$RANDOM_FILE"
    ;;
  Linux)
    if command -v paplay &>/dev/null; then
      ffmpeg -i "$RANDOM_FILE" -f wav - 2>/dev/null | paplay
    elif command -v aplay &>/dev/null; then
      ffmpeg -i "$RANDOM_FILE" -f wav - 2>/dev/null | aplay
    elif command -v ffplay &>/dev/null; then
      ffplay -nodisp -autoexit "$RANDOM_FILE" &>/dev/null
    fi
    ;;
  MINGW*|MSYS*|CYGWIN*)
    powershell.exe -NoProfile -Command "(New-Object Media.SoundPlayer '$RANDOM_FILE').PlaySync()"
    ;;
esac
