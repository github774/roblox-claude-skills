
## Roblox game development (added by roblox-claude-skills)

### Mandatory skills: load BEFORE building, changing or debugging anything Roblox
| Skill | Use it for |
|---|---|
| `roblox-game` | Overall game design and Roblox development guidance. Any new feature, system, map or round. |
| `roblox-dev` | Engine/runtime behaviour: services, Instances, replication, RemoteEvents, character lifecycle, physics, DataStore. |
| `luau-expert` | Any Luau code: strict mode, types, idioms, modules. |
| `roblox-ui` | All UI: GuiObjects, layout, input, Fusion. |
| `roblox-toolchain` | Rojo/Wally/StyLua/selene, `.project.json` sync, filesystem workflow. |
| `roblox-blender-pipeline` | Any mesh, character, accessory, texture or animation made in Blender. |
| `codex-imagegen` | Any image asset: icons, thumbnails, textures, decals, concept art. |

Rule of thumb: code -> `luau-expert` + `roblox-dev` + `roblox-game`. UI -> add `roblox-ui`. Models/animations -> add
`roblox-blender-pipeline`. Images -> add `codex-imagegen`. Repo/sync -> add `roblox-toolchain`. When unsure, load more.

### Obsidian vault = the game's long-term memory (standing requirement)
The vault for <PROJECT NAME> lives at `VAULT_PATH`. It exists to save usage and make building faster.
- **Start of every session:** read `00 Home.md` and `03_Tech_Architecture/Gotchas & Lessons.md`, then the topic note
  for the thing being touched. Do not re-derive what the vault already says.
- **Layout (keep to these pillars, do not add more):** `00_Inbox` quick dumps / ideas / error logs, `01_Vision` design
  and quality bar, `02_Systems` mechanics / economy / UI flows, `03_Tech_Architecture` Luau structure / remotes /
  pipeline / Gotchas, `04_Content` items / maps / characters / asset IDs, `05_Production` Roadmap / Changelog /
  Feedback Log / bugs, `Templates`.
- **Atomic notes:** one mechanic/system/script per note, linked with `[[wikilinks]]` and listed in `00 Home.md`
  so Graph View stays connected. Use the `Templates/` (Note, Asset, Remote).
- **Record everything useful:** every bug + root cause + fix (Gotchas & Lessons), every decision and WHY, every
  Remote/event (name, direction, payload, who fires/handles) via the Remote Template, every uploaded asset ID
  (`04_Content/Assets and IDs.md`, immediately), balance numbers, why a core ModuleScript was refactored, and
  owner feedback + the response (Feedback Log). Lessons the owner states ("I hate X", "always do Y") go in Quality Bar.
- **End of every session (5 min, never skip):** 1) triage `00_Inbox` into pillars and empty it, 2) fix broken
  `[[links]]`, 3) update `05_Production/Roadmap.md`, 4) add a dated entry to `Changelog.md`, owner feedback to
  `Feedback Log.md`, every bug/lesson to `Gotchas & Lessons.md`, and update the topic note that changed.
- Never edit the user's personal notes (`Welcome.md`, daily notes, `Untitled*`).
- Keep the vault backed up (GitHub private repo, iCloud/Drive, or Obsidian Sync). Don't leave it in Downloads.
