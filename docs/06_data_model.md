# LIFE OS 2.0 — Data Model

**Document Version:** 1.0  
**Last Updated:** 2025-02-01  
**Status:** Stage 1 — Planning

---

## Data Model Overview (MVP)

**Decision:** Persistence technology to be chosen in Stage 4. Below is the logical data model.

### HealthEntry

| Field | Type | Notes |
|-------|------|-------|
| id | UUID | Primary key |
| date | Date | Entry date |
| type | enum | sleep, steps, mood, water |
| value | Double / String | Numeric for sleep/steps/water; mood uses scale or string |
| note | String? | Optional note |
| createdAt | Date | Timestamp |

### FinanceAccount

| Field | Type | Notes |
|-------|------|-------|
| id | UUID | Primary key |
| name | String | Account name |
| balance | Decimal | Current balance |
| currency | String | ISO 4217 (e.g. USD) |
| type | enum | checking, savings, cash, other |
| createdAt | Date | Timestamp |

### Habit

| Field | Type | Notes |
|-------|------|-------|
| id | UUID | Primary key |
| name | String | Habit name |
| frequency | enum | daily, weekly |
| streak | Int | Current streak |
| lastCheckIn | Date? | Last check-in date |
| createdAt | Date | Timestamp |

### Task

| Field | Type | Notes |
|-------|------|-------|
| id | UUID | Primary key |
| title | String | Task title |
| dueDate | Date? | Optional due date |
| priority | enum | low, medium, high |
| completed | Bool | Completion status |
| createdAt | Date | Timestamp |

### Note

| Field | Type | Notes |
|-------|------|-------|
| id | UUID | Primary key |
| title | String | Note title |
| content | String | Note body |
| createdAt | Date | Timestamp |
| updatedAt | Date | Last modified |

### CategoryCard (Derived)

Not persisted. Aggregated from category data at runtime:
- title: static per category
- icon: static per category
- summaryMetric: computed from latest entries
- lastUpdated: max(entries.updatedAt)

---

## Persistence Options (Stage 4)

| Option | Pros | Cons |
|--------|------|------|
| **SwiftData** | Native Swift, modern, type-safe | iOS 17+ only |
| **Core Data** | Mature, well-supported | Boilerplate, older API |
| **SQLite (raw)** | Lightweight, portable | Manual schema, no ORM |
| **UserDefaults** | Simple for small data | Not suitable for lists/relations |
| **File-based JSON** | Simple, debuggable | No queries, scaling limits |

**Recommendation:** SwiftData if targeting iOS 17+; otherwise Core Data.
