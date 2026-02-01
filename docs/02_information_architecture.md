# LIFE OS 2.0 — Information Architecture

**Document Version:** 1.0  
**Last Updated:** 2026-02-01  
**Status:** Stage 1 — Planning

---

## B) Information Architecture

### Entity List (MVP)

| Entity | Description | Attributes (Core) | Category |
|--------|-------------|-------------------|----------|
| **CategoryCard** | Card representing a life domain on home | title, icon, summaryMetric, lastUpdated | Home |
| **HealthEntry** | Single health data point | date, type (sleep/steps/mood/water), value, note | Health |
| **FinanceAccount** | Account summary | name, balance, currency, type | Finance |
| **Habit** | Recurring habit to track | name, frequency, streak, lastCheckIn | Habits |
| **Task** | To-do item | title, dueDate, priority, completed | Tasks |
| **Note** | Text entry | title, content, createdAt, category | Notes |

### Entity Relationships

```
Home
 ├── CategoryCard[] (one per category)
 │
Health
 ├── HealthEntry[] (many entries per user)
 │
Finance
 ├── FinanceAccount[] (many accounts)
 │
Habits
 ├── Habit[] (many habits)
 │
Tasks
 ├── Task[] (many tasks)
 │
Notes
 ├── Note[] (many notes)
```

### Cross-Category Relations (MVP)

- **None** — categories are independent. No shared entities.
- Home aggregates summaries from each category but does not enforce referential integrity between them.

### Metrics & Summaries (Per Category)

| Category | Summary Metric(s) |
|----------|-------------------|
| Health | Today’s mood, sleep hours, steps |
| Finance | Total balance across accounts |
| Habits | Streak count, % completion today |
| Tasks | Pending count, overdue count |
| Notes | Recent note count or last edited |
