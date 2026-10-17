---
tags: [pipeline, gotchas]
updated: YYYY-MM-DD
---
# Gotchas & Lessons
Every problem we hit, its cause and the fix. **Add to this every time something bites. Read it before building.**

## Studio / MCP
- **Studio left in Play mode** makes edits fail with "Edit datamodel is not available". Stop play first.
- **Re-requiring a ModuleScript returns the cached result.** Destroy and recreate it to rebuild.
- **Newly uploaded textures/meshes render white/blank for a few minutes** while Roblox processes them. Wait before judging.
- **Live collaboration:** if a partner is in the same place, tell them before large edits.

## Luau / runtime
- (add: bug, cause, fix)

## Blender / assets
- (add: bug, cause, fix)

## Tooling (macOS)
- There is no `timeout` command on macOS. Python output redirected to a file is buffered; check output files instead.
