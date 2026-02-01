# LIFE OS 2.0 — Project Brief

**Document Version:** 1.0  
**Last Updated:** 2025-02-01  
**Status:** Stage 1 — Planning

---

## Project Name
**LIFE OS 2.0** (working title)

## Main Goal
Create a modular Life Operating System iOS app (SwiftUI) with multiple categories (health, finance, etc.). The app serves as a central dashboard for managing key life domains.

## Core Principles
- **Modular:** Categories are independent modules; new ones can be added without rewriting core.
- **No AI in-app:** AI is used only during development (coding assistant). No AI features in the product.
- **Stage-based workflow:** ~10 stages; work only on the current stage.
- **Documentation discipline:** Every decision, change, and bug is tracked.

## Tech Stack (Default)
| Layer | Technology |
|-------|------------|
| Platform | iOS (Swift + SwiftUI) |
| Architecture | MVVM + Coordinators/Router |
| Persistence | TBD — propose options in Stage 4 |
| Version Control | Git (local + GitHub remote) |
| CI | GitHub Actions (optional, later) |

## Non-Negotiable Rules
1. Work ONLY on the current stage.
2. After each stage: summary, decisions locked, open questions, next stage checklist.
3. Never silently assume missing info — ask or propose options.
4. No code unless stage explicitly allows code.
5. Every change tracked: version, changelog, decisions, bugs, rollback plan.

## Target Audience
Personal life management — individuals who want a unified view of health, finance, habits, and other life domains.

## Success Criteria (Stage 1)
- Complete planning package approved
- All `/docs` deliverables created
- Decisions locked for Stage 2
- Open questions answered or deferred with rationale
