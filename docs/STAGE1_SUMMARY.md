# Stage 1 — Planning Summary

**Stage:** 1 — PLANNING  
**Status:** ✅ Complete  
**Date:** 2026-02-01  
**Version:** 0.0.1

---

## 1. Stage 1 Deliverables (A–G)

### A) Categories & Scope

- **5 MVP categories:** Health, Finance, Habits, Tasks, Notes  
- **Later:** Goals, Learning, Relationships  
- **MVP IN:** List/detail/add per category, home dashboard, theme support, local persistence  
- **MVP OUT:** AI, cloud sync, third-party integrations, widgets, iPad/Watch  

### B) Information Architecture

- **Entities:** CategoryCard, HealthEntry, FinanceAccount, Habit, Task, Note  
- **Relationships:** Categories independent; Home aggregates summaries  
- **Metrics:** Per-category summary (mood, balance, streak, task count, note count)  

### C) Navigation

- **Bottom tabs:** Home, Categories, Quick Add (+)  
- **18 screens** in MVP (see `/docs/03_navigation_map.md`)  
- **Flows:** Launch → Home; Home → Category → List → Detail; Quick Add → contextual add  

### D) UI/Visual

- **Cards:** 12pt/16pt radius, 16pt padding, light shadow  
- **Typography:** SF Pro, 12–24pt, semantic weights  
- **Menu:** 2-column grid of cards on Home (not carousel)  
- **Theme:** Day/Night via Theme protocol; semantic colors; environment injection  

### E) Architecture Plan

- **Modules:** App, Core, Features (Home, Health, Finance, Habits, Tasks, Notes), Settings, Data  
- **Folder structure:** App, Core, Features, Data, Resources  
- **MVVM + Coordinators:** View → ViewModel → Repository → Storage; Coordinator for navigation  
- **Routing:** AppCoordinator + FeatureCoordinators; NavigationPath or route enum  

### F) Versioning Plan

| Version | Contents |
|---------|----------|
| v0.0.1 | Stage 1 planning (current) |
| v0.1.0 | Repo setup, skeleton, routing |
| v0.2.0 | Data model, storage |
| v0.3.0 | Core UI components |
| v0.4.0 | Category scaffolding |
| v0.5.0 | MVP features |
| v0.6.0 | QA fixes |
| v0.7.0 | Polish |
| v1.0.0 | Release |

### G) Questions (Minimal Blocking)

1. **Minimum iOS version?** Affects SwiftData (iOS 17+) vs Core Data choice.  
   - *Default: iOS 17* (allows SwiftData)  
   - *Alternative: iOS 15* (Core Data)

2. **GitHub repo:** Create new or use existing SANSARA?  
   - *Default: Use existing workspace; rename project if needed*

3. **Project rename:** Workspace is "SANSARA". Use "LIFE OS 2.0" as product name and keep SANSARA as repo/Xcode project, or rename everything?  
   - *Default: LIFE OS 2.0 = product name; SANSARA = repo/project name (can rename later)*

---

## 2. Decisions Locked

- MVP includes 5 categories: Health, Finance, Habits, Tasks, Notes  
- Home uses 2-column grid of category cards  
- Bottom tabs: Home, Categories, Quick Add (no AI/assistant tab)  
- Theme system: Day/Night via Theme protocol and environment injection  
- Architecture: MVVM + Coordinators; folder structure defined  
- Persistence: deferred to Stage 4; options documented  
- 18 screens in MVP navigation  
- Conventional Commits; no squash on main; tags for releases  
- Rollback policy documented in `/docs/10_release_and_rollback.md`  

---

## 3. Open Questions

1. **Minimum iOS version?** (Blocks Stage 4 persistence choice.)  
   - Proposed default: iOS 17 (SwiftData)  
   - Alternative: iOS 15 (Core Data)

2. **GitHub remote:** Create new "life-os-2" repo or use existing SANSARA?  
   - Proposed default: Use SANSARA repo; product name = LIFE OS 2.0

3. **Project/Xcode naming:** Keep SANSARA.xcodeproj or rename to LIFE_OS?  
   - Proposed default: Keep SANSARA for now; rename in Stage 2 if desired

---

## 4. Next Stage Checklist (Stage 2 — Repo + GitHub Setup)

- [ ] Initialize git (if not already)
- [ ] Create `main` and `develop` branches
- [ ] Set up GitHub remote
- [ ] Configure branch protection (optional)
- [ ] First checkpoint commit with all Stage 1 docs
- [ ] Tag `v0.0.1` (planning complete)
- [ ] Update CHANGELOG with Stage 2 start

---

## 5. STOP

**Stage 1 is complete.**  
Awaiting confirmation before proceeding to Stage 2.
