# LIFE OS 2.0 — Component Library

**Document Version:** 1.0  
**Last Updated:** 2026-02-01  
**Status:** Stage 1 — Planning

---

## Component Catalog (Planned)

### 1. Cards

| Component | Description | Props/Config |
|-----------|-------------|--------------|
| **CategoryCard** | Home dashboard card for a category | title, icon, summaryText, onTap |
| **EntryCard** | Generic card for list items (task, note, habit) | title, subtitle, leadingView, trailingView, onTap |
| **MetricCard** | Card showing a single metric | label, value, unit, trend |

### 2. Buttons

| Component | Description | Variants |
|-----------|-------------|----------|
| **PrimaryButton** | Main CTA | filled, disabled |
| **SecondaryButton** | Secondary action | outlined |
| **IconButton** | Icon-only (e.g. Quick Add) | circle, square |

### 3. Inputs

| Component | Description |
|-----------|-------------|
| **LOSTextField** | Themed text field |
| **LOSTextEditor** | Multi-line text (notes) |
| **LOSPicker** | Themed picker (priority, habit type) |
| **LOSDatePicker** | Date/time picker |

### 4. Navigation

| Component | Description |
|-----------|-------------|
| **LOSTabBar** | Custom tab bar (Home, Categories, Quick Add) |
| **LOSNavBar** | Themed navigation bar |
| **LOSBackButton** | Themed back button |

### 5. Theme-Aware Base

All components MUST:
- Use `Theme` for colors (no hardcoded hex)
- Support Day/Night via `colorScheme` or `Theme`
- Allow background override via environment (for future “background swap” feature)

### Theme Switching (Architecture)

- `ThemeEnvironmentKey` — injects current theme
- Components read: `@Environment(\.theme) var theme`
- Switching: `ThemeManager.currentTheme = .night` → all views update

### Background Swapping (Future)

- `BackgroundStyle` enum: `solid`, `gradient`, `image`
- `Theme` can include `backgroundConfiguration`
- Views use `theme.backgroundView` as root — swapping theme swaps background without refactoring screens.
