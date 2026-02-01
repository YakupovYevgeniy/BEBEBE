# LIFE OS 2.0 — Architecture

**Document Version:** 1.0  
**Last Updated:** 2026-02-01  
**Status:** Stage 1 — Planning

---

## E) Architecture Plan

### Module Boundaries

| Module | Responsibility |
|--------|----------------|
| **App** | Entry point, dependency injection, theme setup |
| **Core** | Theme, routing, base components |
| **Home** | Dashboard, category cards |
| **Health** | Health entries, list, detail, add |
| **Finance** | Accounts, list, detail, add |
| **Habits** | Habits, list, detail, add, check-in |
| **Tasks** | Tasks, list, detail, add |
| **Notes** | Notes, list, detail, add |
| **Settings** | Theme toggle, preferences |
| **Persistence** | Storage abstraction, repository layer |

### Folder Structure

```
LIFE_OS/
├── App/
│   ├── LIFEOSApp.swift
│   └── AppDelegate.swift (if needed)
├── Core/
│   ├── Theme/
│   │   ├── Theme.swift
│   │   ├── DayTheme.swift
│   │   └── NightTheme.swift
│   ├── Router/
│   │   └── Coordinator.swift
│   ├── Components/
│   │   ├── LOSButton.swift
│   │   ├── LOSCard.swift
│   │   └── ...
│   └── Extensions/
├── Features/
│   ├── Home/
│   │   ├── View/
│   │   ├── ViewModel/
│   │   └── HomeCoordinator.swift
│   ├── Health/
│   │   ├── View/
│   │   ├── ViewModel/
│   │   └── HealthCoordinator.swift
│   ├── Finance/
│   ├── Habits/
│   ├── Tasks/
│   ├── Notes/
│   └── Settings/
├── Data/
│   ├── Models/
│   ├── Repositories/
│   └── Storage/
└── Resources/
    ├── Assets.xcassets
    └── Localizable.strings
```

### MVVM Rules

1. **View:** SwiftUI views only. No business logic. Binds to ViewModel via `@StateObject` / `@ObservedObject`.
2. **ViewModel:** Holds state, handles user actions, calls repositories. No UIKit/SwiftUI imports except for types.
3. **Model:** Pure data types. No UI dependencies.
4. **Coordinator/Router:** Handles navigation (push, present, pop). Injected into ViewModels or passed via environment.

### Routing / Coordinator Plan

- **AppCoordinator:** Root coordinator, owns TabView, switches tabs.
- **FeatureCoordinator (per feature):** Handles navigation within feature (list → detail → add).
- **Navigation:** Coordinator exposes `NavigationPath` or `@Published` route enum. Views observe and present accordingly.
- **Deep links (later):** Coordinator parses URL and pushes route.

### Dependency Flow

```
App → Coordinators → ViewModels → Repositories → Storage
         ↓
      Views ← ViewModels
```

### Theme Injection

- `ThemeManager` (ObservableObject) holds `currentTheme`.
- Injected at app root: `.environmentObject(themeManager)`.
- Views: `@EnvironmentObject var themeManager: ThemeManager`.
