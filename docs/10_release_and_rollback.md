# LIFE OS 2.0 — Release & Rollback

**Document Version:** 1.0  
**Last Updated:** 2025-02-01  
**Status:** Stage 1 — Planning

---

## Release Policy

1. **Never squash on main** — Preserve history for rollback.
2. **Keep tags for stable builds** — `v0.1.0`, `v0.2.0`, etc.
3. **Stage gates** — Each stage ends with checkpoint commit + optional tag.
4. **Release notes** — In CHANGELOG.md and GitHub Release.

---

## Milestone Versions (Planned)

| Version | Contents | Stage |
|---------|----------|-------|
| v0.1.0 | Repo setup, skeleton, routing | Stage 2–3 |
| v0.2.0 | Data model, storage, persistence | Stage 4 |
| v0.3.0 | Core UI components, theme | Stage 5 |
| v0.4.0 | Category modules scaffolding | Stage 6 |
| v0.5.0 | MVP features (all 5 categories) | Stage 7 |
| v0.6.0 | QA fixes | Stage 8 |
| v0.7.0 | Polish, accessibility | Stage 9 |
| v1.0.0 | Release build, rollback-ready | Stage 10 |

---

## Rollback Steps

### Code Rollback

1. Identify last stable tag: `git tag -l`
2. Create rollback branch: `git checkout -b rollback-v0.X.Y <commit-or-tag>`
3. Merge or cherry-pick hotfix if needed.
4. Tag new stable: `git tag v0.X.Y+1`

### App Store Rollback

1. No automatic rollback. Must submit previous build as new version.
2. Document last known-good build number in this file.
3. Keep IPA/archive for critical versions.

### Data Migration Rollback

1. If schema change fails: restore from backup before migration.
2. Document migration scripts and rollback scripts in `/docs`.
3. Version persistence schema; support backward reads where possible.

---

## Checkpoint Commit Format

```
chore(stage-N): Stage N complete — [brief description]

- Summary of changes
- Decisions locked
- Next: Stage N+1
```
