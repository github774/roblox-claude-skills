#!/usr/bin/env bash
# Installs the Roblox skill pack into ~/.claude/skills (Claude Code / Claude desktop Code tab).
# Usage: ./install.sh            (copy, safe to re-run; updates existing)
#        ./install.sh --link     (symlink instead, so `git pull` updates skills live)
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
MODE="copy"
[[ "${1:-}" == "--link" ]] && MODE="link"

mkdir -p "$DEST"
count=0
for dir in "$HERE"/skills/*/; do
  name="$(basename "$dir")"
  target="$DEST/$name"
  if [[ -e "$target" || -L "$target" ]]; then
    rm -rf "$target"
  fi
  if [[ "$MODE" == "link" ]]; then
    ln -s "${dir%/}" "$target"
  else
    cp -R "${dir%/}" "$target"
  fi
  echo "  installed: $name"
  count=$((count + 1))
done

echo
echo "Done: $count skills ($MODE) -> $DEST"
echo "Restart Claude Code (or start a new session) so it picks them up."
echo "Next: open Claude Code and paste the contents of SETUP_PROMPT.md."
