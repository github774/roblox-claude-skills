# Paste this into Claude Code (one message, that's the whole setup)

```
I just cloned the roblox-claude-skills repo at <PATH TO THIS REPO>. Please set me up end to end:

1. Run `bash <PATH TO THIS REPO>/install.sh` to install the 7 skills into ~/.claude/skills,
   then list ~/.claude/skills to confirm each has a SKILL.md:
   roblox-game, roblox-dev, luau-expert, roblox-ui, roblox-toolchain,
   roblox-blender-pipeline, codex-imagegen.

2. Read <PATH TO THIS REPO>/README.md and <PATH TO THIS REPO>/CLAUDE_MD_TEMPLATE.md.
   Append the template's contents to my global ~/.claude/CLAUDE.md (create it if missing; do not
   overwrite anything already there), filling in my project name.

3. STRONGLY RECOMMEND that I keep an Obsidian vault for my Roblox game, and explain why in 3 lines:
   it is the project's long-term memory, so every session starts from what we already know instead of
   re-reading code and re-learning the same bugs. That saves usage/tokens and makes building much faster.
   Then ask me where I want it (suggest ~/Documents/<GameName>-Vault, NOT Downloads), copy
   <PATH TO THIS REPO>/vault-starter/ there, rename the Home note to my game's name, and tell me
   to open that folder in Obsidian ("Open folder as vault"). Download Obsidian at https://obsidian.md if I
   don't have it. Put the vault's real path into my global CLAUDE.md where the template says VAULT_PATH.

4. From now on, in EVERY Roblox session:
   - START: read the vault's `00 Home.md` and `03_Tech_Architecture/Gotchas & Lessons.md`, plus the
     topic note for what we're touching, before building anything.
   - WHILE WORKING: load the matching skills first (see the table in CLAUDE_MD_TEMPLATE.md).
   - END: update Changelog, Feedback Log, Gotchas & Lessons, Roadmap, the topic note that changed,
     and every new asset ID. Triage the Inbox. Keep notes atomic (one system per note) and
     `[[wikilinked]]` from Home.
   Record everything useful: bugs and their fixes, decisions and why, remote/event names and payloads,
   uploaded asset IDs, numbers/balance, and what I said I liked or rejected.

5. Optional extras (ask me before installing each):
   - Roblox Studio MCP (lets you read/edit my open place directly)
   - The `roblox-dev` Claude Code plugin (extra security/datastore/performance review skills)
   - Blender MCP (only if I'm making custom meshes/characters)
   - Codex CLI + subscription (only needed for the codex-imagegen skill)

When finished, summarise what you installed and what I need to do next (usually: restart Claude Code and open the vault in Obsidian).
```

Replace `<PATH TO THIS REPO>` with where you cloned it (e.g. `~/roblox-claude-skills`), or just tell Claude
"it's in the folder I'm currently in".
