# LIFE OS 2.0 — Navigation Map

**Document Version:** 1.0  
**Last Updated:** 2026-02-01  
**Status:** Stage 1 — Planning

---

## C) Navigation

### Bottom Menu Concept

| Tab | Label | Purpose |
|-----|-------|---------|
| **Home** | Menu / Home | Main dashboard with category cards |
| **Categories** | Categories / List | Browse all categories (or shortcut to last) |
| **Quick Action** | + / Add | Floating or tab button — add entry contextually |

**Note:** No AI/Assistant tab. The “assistant-like” action is replaced by a **Quick Add** button (contextual: add task, note, habit check-in, etc.).

### Screen List (MVP)

| Screen ID | Screen Name | Description |
|-----------|-------------|-------------|
| S1 | Home | Dashboard with category cards, summaries |
| S2 | Category List | Grid or list of category tiles |
| S3 | Health List | List of health entries (filterable by type) |
| S4 | Health Detail | View/edit single health entry |
| S5 | Health Add | Add new health entry |
| S6 | Finance List | List of accounts |
| S7 | Finance Detail | View/edit account |
| S8 | Finance Add | Add new account |
| S9 | Habits List | List of habits with streak indicators |
| S10 | Habit Detail | View/edit habit, check-in |
| S11 | Habit Add | Add new habit |
| S12 | Tasks List | List of tasks (with filters) |
| S13 | Task Detail | View/edit task |
| S14 | Task Add | Add new task |
| S15 | Notes List | List of notes |
| S16 | Note Detail | View/edit note |
| S17 | Note Add | Add new note |
| S18 | Settings | Theme, preferences |

### User Flows

**Flow 1: Open app → see dashboard**
```
App Launch → Home (S1) → Category cards visible
```

**Flow 2: Navigate to category**
```
Home (S1) → Tap Health card → Health List (S3)
```

**Flow 3: Add entry**
```
Home (S1) → Quick Add (+) → Choose type (Task/Note/Habit/Health) → Add screen → Save → Back to context
```
Alternative: `Health List (S3) → Add → Health Add (S5) → Save`

**Flow 4: Edit entry**
```
Health List (S3) → Tap entry → Health Detail (S4) → Edit → Save
```

### Deep Linking (Later)
Not in MVP. Plan for URL scheme: `lifeos://health/entry/{id}`.
