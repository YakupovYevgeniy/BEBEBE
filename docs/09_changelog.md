# LIFE OS 2.0 — Changelog

**Document Version:** 1.1  
**Last Updated:** 2026-02-01  

---

## Version History

### [Unreleased]

*(None)*

---

### [0.0.3-stage2] — 2026-02-01

#### Added
- Convert SANSARA from submodule (mode 160000) to regular tracked folder
- `.github/pull_request_template.md`
- `.github/ISSUE_TEMPLATE/bug_report.md`
- `.github/ISSUE_TEMPLATE/feature_request.md`
- `.gitignore` (Xcode, DerivedData, xcuserdata)
- Branch protection recommendations in docs/10

#### Changed
- docs/10: Rollback steps in English; add v0.0.3-stage2 to milestones

#### Fixed
- SANSARA no longer gitlink — full monorepo, clone includes Xcode project

---

### [0.0.2-stage2] — 2026-02-01

- `scripts/common_push.sh` — stage checkpoint automation
- docs/10: Stage Checkpoint rules, rollback commands

---

### [0.0.1] — 2026-02-01

#### Added
- Stage 1 planning package
- All `/docs` deliverables (00–10)
- README, CONTRIBUTING, CHANGELOG, ROADMAP, LICENSE
- Scope & categories definition (5 MVP categories)
- Information architecture
- Navigation map (18 screens)
- UI design system (cards, typography, theme)
- Component library plan
- Data model (logical)
- Architecture plan (MVVM + Coordinators)
- QA bug tracker template
- Release & rollback plan

#### Decisions Locked
- MVP: Health, Finance, Habits, Tasks, Notes
- Home: 2-column grid of category cards
- Bottom tabs: Home, Categories, Quick Add
- Theme: Day/Night via Theme protocol
- Architecture: MVVM + Coordinators
- Folder structure: App, Core, Features, Data, Resources

#### Known Issues
- None (no code yet)

---

## Changelog Format

- **Added** — New features
- **Changed** — Changes to existing functionality
- **Deprecated** — Soon-to-be removed features
- **Removed** — Removed features
- **Fixed** — Bug fixes
- **Security** — Security fixes
