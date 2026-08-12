---
name: apex-combat-review
description: Review Apex Legends combat clips by separating observed information, available options, actual actions, and evaluation without relying on hindsight.
---

# APEX Combat Review Skill

Use this skill when reviewing an Apex Legends fight, death recap, clutch,
rotation fight, or short gameplay clip. The goal is to make the review
reproducible from what the player could observe at the time, not from the final
outcome alone.

## Scope

This skill defines coaching procedure and observation order. It does not store
weapon damage tables, legend statistics, patch-dependent values, frame
extraction, OCR, or audio event classification.

Use the companion MCP servers by responsibility:

- `game-video-analysis-mcp`: inspect video metadata, frames, clips, crops, and
  other media-derived evidence.
- `apex-reference-mcp`: confirm Apex-specific facts such as item behavior,
  weapon or legend details, mechanics, and patch/version-dependent reference
  data.
- This skill: decide what to observe, how to separate evidence from inference,
  and how to present coaching feedback.

When an Apex-specific fact affects the judgment, consult `apex-reference-mcp`
instead of embedding the value in this skill. If the reference is missing or
uncertain, mark the point as uncertain rather than filling the gap from memory.

## Core Rule

Evaluate each decision from the information that was observable at that moment.

- Do not call a play correct only because the player survived.
- Do not call a play wrong only because the player died.

The reason must come from observable risk, missed information, or a better
option available at the time.

Always structure analysis in this order:

1. Observed information
2. Options available at that moment
3. Actual action taken
4. Evaluation and coaching point

## Observation Checklist

Check these items before judging the play:

- Pre-fight and contact context: where the fight started, whether the player was
  rotating, holding space, third-partying, or being pressured.
- Player status: health, shield, cracked state, healing status, reload state,
  ammo, usable weapons, inventory constraints, and available healing resources.
- Ally status: teammate positions, health or shield state if visible, knocks,
  revives, crossfire potential, and whether the team can trade damage.
- Enemy status: visible damage dealt, shield cracks, knocks, armor tier if
  known, enemy count, enemy positions, and whether enemies can swing together.
- Combat log and squad count: knocks, eliminations, kill feed signals, third
  party risk, and whether the squad count changes the risk.
- Legend abilities: tactical, ultimate, passive, deployables, scans, movement
  abilities, and only the parts visible or inferable from the clip.
- Positioning: cover, angles, crossfire, distance, high ground, escape route,
  exposure during reload or heal, and whether line of sight was intentionally
  held or accidentally exposed.
- Ring and macro pressure: ring timer, ring damage risk, route constraints, and
  likely third-party paths.
- Audio information: footsteps, gunfire direction, healing, reviving, ability
  cues, climbing, doors, ziplines, and uncertainty when audio is unavailable or
  ambiguous.

## Evidence Labels

Use these labels when writing a review:

- `observed`: directly visible or audible in the clip.
- `inferred`: likely but not directly confirmed; explain the cue that supports
  it.
- `reference`: confirmed through `apex-reference-mcp`.
- `unknown`: not available from the clip or reference data.

If a statement mixes observation and inference, split it into separate bullets.

## Review Flow

1. Establish the timestamp and situation.
2. List the observed information using the checklist.
3. Identify what the player could reasonably know at that timestamp.
4. List the practical options, including doing nothing, holding, healing,
   reloading, swinging, backing up, using an ability, or repositioning.
5. Describe the actual action without judgment.
6. Evaluate the action against the known information and risk.
7. State one or two coaching points that would change the next similar fight.
8. Call out missing information or reference gaps explicitly.

Prefer narrow, actionable feedback. Avoid turning one clip into broad rank
strategy unless the clip itself provides the evidence.

## Expected Review Shape

```markdown
## Timestamp
00:42-00:48

## Observed Information
- observed: You cracked one enemy shield before taking cover.
- observed: Your magazine was low before the second peek.
- inferred: At least one enemy could still trade because a second weapon angle
  was visible near the doorway.
- unknown: Teammate health was not visible in this segment.

## Options Available
- Hold cover and reload.
- Heal if enemy pressure dropped.
- Re-peek for a quick finish.
- Back up to reset the angle.

## Actual Action
You re-peeked before reloading and stayed exposed after the first burst.

## Evaluation
The re-peek had a possible reward because one enemy was cracked, but the known
ammo and exposure made the follow-up fragile. This is not wrong because the
player died; it is risky because the clip already showed low ammo and a second
possible enemy angle before the death.

## Coaching Point
After cracking an enemy, confirm whether you can finish with current ammo and
cover. If not, reload or change the angle before taking the second peek.

## Reference Checks
- reference: Use `apex-reference-mcp` if the judgment depends on exact reload,
  healing, ability, or patch-specific values.
```

## Guardrails

- Do not invent exact damage, timing, ability, weapon, or patch values.
- Do not treat the final result as the proof of decision quality.
- Do not assume the player heard an audio cue unless the clip supports it.
- Do not convert tactical preferences into fixed Apex facts.
- Do not quote external wiki text into this skill.
- Keep unsupported facts as `unknown`.
