#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"
mkdir -p "$SKILLS_DIR"

for skill in diagnostic report; do
  if [ -e "$SKILLS_DIR/$skill" ] && [ ! -L "$SKILLS_DIR/$skill" ]; then
    echo "Warning: $SKILLS_DIR/$skill exists and is not a symlink. Skipping."
    continue
  fi
  ln -sf "$SCRIPT_DIR/skills/$skill" "$SKILLS_DIR/$skill"
  echo "Installed /$skill skill -> $(readlink "$SKILLS_DIR/$skill")"
done
echo "Done. To uninstall: rm ~/.claude/skills/diagnostic ~/.claude/skills/report"
