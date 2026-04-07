#!/bin/sh
set -e

REPO="zwan2/claude-code-copy-slack"
BRANCH="main"
FILE="copy-slack.md"
DEST="$HOME/.claude/commands"

mkdir -p "$DEST"

curl -fsSL "https://raw.githubusercontent.com/$REPO/$BRANCH/$FILE" -o "$DEST/$FILE"

echo "Installed: $DEST/$FILE"
echo "Restart Claude Code, then use /copy-slack"
