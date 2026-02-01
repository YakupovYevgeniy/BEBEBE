# LIFE OS 2.0 — UI Design System

**Document Version:** 1.0  
**Last Updated:** 2026-02-01  
**Status:** Stage 1 — Planning

---

## D) UI/Visual

### Card Styles

| Element | Spec | Rationale |
|---------|------|-----------|
| **Corner radius** | 12pt (small), 16pt (large) | iOS HIG-friendly, soft look |
| **Padding** | 16pt internal | Comfortable touch targets |
| **Shadow** | Light: 0 2 8 rgba(0,0,0,0.06) | Subtle depth, not heavy |
| **Spacing (between cards)** | 12pt | Clear separation |
| **Border** | 1pt divider (optional) | For accessibility / high contrast |

### Typography

| Use | Font | Size | Weight |
|-----|------|------|--------|
| Card title | SF Pro / System | 17pt | Semibold |
| Card subtitle | SF Pro | 14pt | Regular |
| Body | SF Pro | 15pt | Regular |
| Caption | SF Pro | 12pt | Regular |
| Metric (large) | SF Pro | 24pt | Bold |

### Menu Style: Carousel vs List

**Decision: Grid of cards (2 columns) on Home**

- **Why not carousel:** Carousel hides content; users may miss categories.
- **Why not plain list:** Less visual hierarchy; less “dashboard” feel.
- **Grid of cards:** All categories visible, scannable, touch-friendly. Scrollable if needed.

**Category list:** Same grid, full screen. Tapping a category opens its list view.

### Theme System Plan

| Theme | Background | Foreground | Accent |
|-------|------------|------------|--------|
| **Day** | systemBackground (white) | label (black) | systemBlue |
| **Night** | systemBackground (black) | label (white) | systemBlue |

**Background swapping:**
- Themes are **environment values** (e.g. `@Environment(\.colorScheme)` + custom `Theme`).
- Each screen uses semantic colors: `backgroundColor`, `cardBackground`, `textPrimary`, etc.
- Actual values come from `Theme` object; swapping theme = swap `Theme` instance.
- **No hardcoded** `.black` or `.white` in UI code.

**Implementation approach:**
- `Theme` protocol with `DayTheme`, `NightTheme` conformances.
- `ThemeManager` (ObservableObject) holds current theme.
- Views inject theme via environment or `@EnvironmentObject`.

### Color Palette (Semantic)

| Token | Day | Night |
|-------|-----|-------|
| background | #FFFFFF | #000000 |
| cardBackground | #F5F5F7 | #1C1C1E |
| textPrimary | #000000 | #FFFFFF |
| textSecondary | #6C6C70 | #8E8E93 |
| accent | #007AFF | #0A84FF |
| success | #34C759 | #30D158 |
| warning | #FF9500 | #FF9F0A |
| error | #FF3B30 | #FF453A |
