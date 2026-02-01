# Changelog

All notable changes to LIFE OS 2.0 are documented here.

This file mirrors `/docs/09_changelog.md`. Keep both in sync for releases.

---

## [Unreleased]

*(None)*

---

## [0.1.0] — 2026-02-01 (Stage 3)

### Added
- SwiftUI app skeleton: Tab bar (Home, Categories, Quick Add)
- Theme system: Day/Night with toggle
- Placeholder views for Home, Categories, Quick Add

### Changed
- Root: MainTabView; ThemeManager injected
- iOS target: 17.0

---

## [0.0.3-stage2] — 2026-02-01

### Added
- SANSARA as regular folder (submodule fix)
- `.github/` templates: PR, bug report, feature request
- `.gitignore` for Xcode

### Fixed
- Monorepo: clone now includes Xcode project files

---

## [0.0.1] — 2026-02-01

### Added

- Stage 1 planning package
- All `/docs` deliverables (00–10)
- README, CONTRIBUTING, CHANGELOG, ROADMAP, LICENSE
- Scope: 5 MVP categories (Health, Finance, Habits, Tasks, Notes)
- Navigation: 18 screens, bottom tabs
- UI design system: cards, typography, theme (Day/Night)
- Architecture: MVVM + Coordinators, folder structure
- Data model: logical schema for all entities

### Known Issues

- None (no code yet)
