# Roblox Claude Skills

The exact skill set used to build a set of Roblox games with Claude Code, plus a ready-made Obsidian vault
so Claude remembers everything about your game between sessions (saves usage, makes building much faster).

## Quick start (2 minutes)

```bash
git clone https://github.com/github774/roblox-claude-skills.git
cd roblox-claude-skills
./install.sh
```

Then open Claude Code in any folder and paste the block from **[SETUP_PROMPT.md](SETUP_PROMPT.md)**.
Claude installs/verifies everything, adds the rules to your global `CLAUDE.md`, recommends and sets up the
Obsidian vault, and records everything useful from then on. (`./install.sh --link` symlinks instead of copying,
so `git pull` updates your skills.)

**Even lazier:** open Claude Code in the cloned folder and say *"Read README.md and SETUP_PROMPT.md and set me up."*

## What's in the box

| Skill | What it does |
|---|---|
| `roblox-game` | Full-lifecycle game dev companion: design, genres (simulator, tycoon, obby, RPG, horror, BR), monetisation, security, publish checklist, workflows |
| `roblox-dev` | Engine/runtime behaviour: replication, Remotes, DataStore, character lifecycle, physics, streaming, parallel Luau |
| `luau-expert` | Strictly-typed modern Luau: types, idioms, modules, anti-patterns |
| `roblox-ui` | UI: GuiObjects, UDim2, layouts, input, Fusion 0.3 |
| `roblox-toolchain` | Rojo + Wally + StyLua + selene + Luau LSP, filesystem workflow |
| `roblox-blender-pipeline` | Blender modelling/rigging/animation to Roblox, verification loop |
| `codex-imagegen` | Image assets (icons, textures, thumbnails) via a Codex subscription |

Rule of thumb: code -> `luau-expert` + `roblox-dev` + `roblox-game`; UI -> + `roblox-ui`; models -> + `roblox-blender-pipeline`;
images -> + `codex-imagegen`; Rojo/sync -> + `roblox-toolchain`.

## The Obsidian vault (strongly recommended)

`vault-starter/` is a ready-to-open vault: pillar folders (Inbox, Vision, Systems, Tech Architecture, Content, Production),
Home hub, Gotchas & Lessons, Changelog, Roadmap, Feedback Log, Quality Bar, remote/asset dictionaries and templates.
Claude reads it at the start of every session and updates it at the end, so it never re-learns old bugs or re-reads
your whole codebase. Setup: copy `vault-starter/` somewhere permanent (not Downloads), open it in Obsidian via
"Open folder as vault". The setup prompt does the copy for you.

## Optional extras (not required)

- **Roblox Studio MCP**: lets Claude read/edit your open place directly.
- **`roblox-dev` Claude Code plugin**: extra review skills (security, datastores, performance, testing).
- **Blender + Blender MCP**: only for custom meshes/characters.
- **Codex CLI + subscription**: only for `codex-imagegen`.

## Notes

- The skills are copies of community/third-party Roblox skills (plus one custom pipeline skill); credit to their
  original authors. Check each skill's folder for licence details before redistributing publicly.
- Requires Claude Code (CLI or desktop app). Skills load from `~/.claude/skills/`.
