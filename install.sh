#!/usr/bin/env bash
# Install these skills into ~/.claude/skills/
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")/skills" && pwd)"
DEST="${HOME}/.claude/skills"

mkdir -p "$DEST"

count=0
for dir in "$SRC"/*/; do
  name="$(basename "$dir")"
  cp -r "$dir" "$DEST/"
  echo "  installed: $name"
  count=$((count + 1))
done

echo ""
echo "Installed $count skill(s) into $DEST"
echo "Restart Claude Code or start a new session to pick them up."
