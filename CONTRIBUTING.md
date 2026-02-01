# Contributing to LIFE OS 2.0

## Branching

| Branch | Purpose |
|--------|---------|
| `main` | Stable releases only |
| `develop` | Integration branch |
| `feature/<name>` | New features |
| `fix/<name>` | Bug fixes |

## Commit Message Format (Conventional Commits)

```
<type>: <short description>

[optional body]
```

**Types:**
- `feat:` New feature
- `fix:` Bug fix
- `refactor:` Code change, no feature/fix
- `docs:` Documentation only
- `chore:` Maintenance
- `test:` Tests only

**Examples:**
```
feat(health): add mood entry form
fix(tasks): correct due date display
docs: update architecture diagram
chore(stage-2): complete repo setup
```

## PR Checklist

- [ ] Branch from `develop`
- [ ] Commit messages follow convention
- [ ] No force-push to `main` or `develop`
- [ ] Docs updated if behavior changes
- [ ] Changelog entry for user-facing changes

## Stage Rules

1. Work ONLY on the current stage.
2. Each stage ends with: summary, decisions locked, changelog entry, checkpoint commit.
3. Never squash on `main`.
4. Tag releases: `v0.1.0`, `v0.2.0`, etc.

## Rollback Policy

See `/docs/10_release_and_rollback.md`.
