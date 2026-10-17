---
name: roblox-blender-pipeline
description: Blender modeling, rigging, animation and Luau verification loop for Roblox. Use for any Roblox mesh, character, accessory, texture, or animation work, or when output looked "cheap", flat, or blocky.
---

# Roblox + Blender: look-then-fix pipeline

The failure mode is writing geometry or scripts blind. Never report a model or script as done until you have LOOKED at it or RUN it.

## Modeling (Blender 5.x at /Applications/Blender.app/Contents/MacOS/Blender, run with `-b -P script.py`)
1. Get the reference first. Read the user's reference images; list silhouette, proportions, 3 signature details.
2. Block out with primitives to proportion, then add form. Chunky, readable shapes beat thin blades or soft gaussian lumps (both were rejected before).
3. Fuse organic shapes with a voxel remesh, then bevel/crease hard edges so muscles and folds are crisp.
4. Bake detail into textures (Cycles AO/curvature/sheen) rather than adding triangles. Budget: under ~10k tris per accessory, 20k max per mesh.
5. Render a turnaround (front, side, 3/4, back) at 512px and compare it to the reference side by side with Read. Iterate at least twice before importing.
6. Apply transforms (Ctrl+A), no non-uniform scale, no unsupported constraints/modifiers.

## Axis and import
- Blender (x, -z, y) = Roblox (x, y, z). This is a proper rotation, so winding is preserved.
- Subtract the bbox centre before upload and place the MeshPart at that centre.
- Import path: see memory `roblox-asset-import-pipeline` (local http.server, HttpService fetch, EditableMesh, CreateAssetAsync, CreateMeshPartAsync).
- Texture on parts: MaterialVariant ColorMap is tinted by Part.Color.

## Rigging and animation
- Name bones to R15 joints. A bone sharing a name with an exported object becomes a Motor6D on import; rename to avoid it.
- Bake animation first (IK, constraints, NLA), then FBX: selection only, Armature + Mesh, Y Up / -Z Forward, Apply Transform, Bake Animation on, Add Leaf Bones OFF.
- Import with Studio's Animation Clip Editor importer (Rig Type R15 or Custom).
- For code-driven poses: modern R15 uses AnimationConstraint, older rigs Motor6D. Scan for both. Write Transform in RunService.PreSimulation so it sticks.
- Procedural animation (sin/lerp on joint Transforms) is often more reliable from code than FBX; use it for idles, swings, and walk cycles, then check frames with screen_capture.
- Always verify by screenshot at 3+ time steps of the motion, not one frame.

## Luau scripting
- `--!strict` on every module. Server owns state; client sends intent only; validate every RemoteEvent argument (type, range, rate limit, ownership).
- Clean up: Maid/Janitor pattern, disconnect connections, no per-frame allocations, use task.wait/task.spawn not wait/spawn.
- DataStore: pcall, retry with backoff, session-lock, save on PlayerRemoving and BindToClose.
- Verify loop: edit via multi_edit, run start_stop_play, then get_console_output. Zero errors and the behavior observed in a screen_capture before saying done.
- Lighting.Technology cannot be set from execute_luau.

## Done checklist
- [ ] Reference compared side by side, at least 2 iterations
- [ ] Mesh persists after save (uploaded asset, not raw EditableMesh)
- [ ] Console clean in play mode
- [ ] Screenshot taken in-engine from a normal player camera
