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

## Push, Hold, or Reset Decisions

Use this procedure when judging whether the player should push, maintain the
current position, or disengage/reset. Do not decide from a single cue such as an
enemy shield crack. Compare the actual action with the practical alternatives
available at the decision timestamp.

Evaluate the expected value at the moment of decision, not the later result. A
push that fails can still be reasonable if the observable information favored
it, and a push that succeeds can still be a poor habit if it relied on
information the player could not know.

### Required Observations

- Enemy damage state: estimated remaining health or shield state, and whether a
  crack, flesh damage, knock, or armor swap was actually observed.
- Squad state: current knocks, likely enemy squad size, teammate count, and
  whether the fight is a 3v3, 3v2, 2v3, isolated duel, or unclear.
- Player and ally resources: health, shield, healing state, reload state,
  magazine depth, backup weapon readiness, grenades, movement tools, and
  ability availability when visible.
- Ally support: teammate distance, whether allies can swing or hold line of
  sight at the same time, and whether the player is creating a trade or
  entering alone.
- Distance and timing: distance to the enemy, travel time, climb or door delay,
  whether the enemy can finish a heal/revive/reload before contact, and whether
  the player can return to cover.
- Enemy position: cover quality, retreat path, door or building control, height,
  and whether the enemy can kite the push or force a bad entry angle.
- Enemy vulnerability: healing sound, revive sound, reload timing, ability
  recovery, recent damage, split position, or forced movement.
- Player vulnerability: low health, no shield, empty magazine, slow weapon swap,
  exposed path, crossfire risk, and missing escape route.
- Push assistance: grenades, scans, movement abilities, teammate utility, door
  pressure, or angles that make the push safer.
- External risk: third-party audio, nearby gunfire, ring pressure, exposed
  rotation route, or another squad likely to arrive during the commit.

### Decision Rules

- Do not mark "should have pushed" from an enemy shield crack alone. Require a
  combination such as low enemy resources, teammate advantage, synchronized
  line of sight, short travel time, enemy healing/reviving/reloading, or utility
  that reduces entry risk.
- Mark a push as reasonable when the player has enough resources to survive the
  entry, allies can trade or follow quickly, the enemy is vulnerable, and the
  route does not expose the player to likely crossfire or third parties.
- Mark holding as reasonable when pressure, space control, or a safe angle is
  already winning value, but a full commit would remove cover, split the team,
  or allow another enemy to trade for free.
- Mark disengaging or resetting as reasonable when the player's resources are
  low, ally support is unavailable, enemy count or angle control is unfavorable,
  or external risk makes a commit lower value than healing, reloading, or
  repositioning.
- If the decision is close, present multiple acceptable choices and explain what
  extra observation would separate them. Avoid forcing a single correct answer
  when the clip supports a range.
- Always compare actual action against at least one reasonable alternative:
  push, hold, heal/reload, reposition, use utility, or fully reset.

### Decision Examples

Push is reasonable:

- observed: The player cracked an enemy and dealt additional flesh damage.
- observed: A teammate is close enough to swing the same door within a moment.
- observed: The enemy begins healing behind shallow cover and has no visible
  teammate angle protecting the path.
- inferred: The enemy is unlikely to finish the heal before contact.
- evaluation: Pushing is reasonable because damage, teammate timing, enemy
  vulnerability, and short travel time combine to create a favorable entry. The
  crack alone is not the reason; the supporting observations make the commit
  high value.

Holding is reasonable:

- observed: The player cracked one enemy across a lane.
- observed: The enemy remains behind strong cover with a second enemy angle
  watching the crossing.
- observed: The player's team can hold the current angle and deny a revive or
  rotation.
- evaluation: Maintaining the angle is reasonable because the team already has
  pressure without crossing open space. A push might work, but it would trade a
  controlled angle for an exposed entry against an unconfirmed second enemy.

Resetting is reasonable:

- observed: The player is low health with an empty or nearly empty magazine.
- observed: Teammates are far enough away that they cannot immediately trade.
- inferred: Nearby gunfire or footsteps suggests third-party or flank risk.
- evaluation: Backing up to heal, reload, and regroup is reasonable because the
  player lacks resources and support. Even if the damaged enemy later turns out
  to be weak, that was not reliable enough at the decision timestamp.

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
