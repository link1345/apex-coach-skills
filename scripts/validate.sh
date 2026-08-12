#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
skill="$root/skills/apex-combat-review/SKILL.md"
readme="$root/README.md"

test -f "$skill"
test -f "$readme"

grep -q "name: apex-combat-review" "$skill"
grep -q "game-video-analysis-mcp" "$skill"
grep -q "apex-reference-mcp" "$skill"
grep -q "Observed information" "$skill"
grep -q "Options available" "$skill"
grep -q "Actual action" "$skill"
grep -q "Evaluation" "$skill"
grep -q "observed" "$skill"
grep -q "inferred" "$skill"
grep -q "unknown" "$skill"
grep -q "Do not call a play correct only because the player survived" "$skill"
grep -q "Do not call a play wrong only because the player died" "$skill"
grep -q "Push, Hold, or Reset Decisions" "$skill"
grep -q "Do not mark \"should have pushed\" from an enemy shield crack alone" "$skill"
grep -q "Evaluate the expected value at the moment of decision" "$skill"
grep -q "Push is reasonable" "$skill"
grep -q "Holding is reasonable" "$skill"
grep -q "Resetting is reasonable" "$skill"
grep -q "Expected Review Shape" "$skill"
grep -q "apex-combat-review" "$readme"

echo "validation passed"
