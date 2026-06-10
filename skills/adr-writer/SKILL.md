---
name: adr-writer
description: >-
  Draft an Architecture Decision Record (ADR) — context, decision drivers,
  options considered with trade-offs, the decision, and its consequences. Use
  when capturing a significant or hard-to-reverse technical decision, or when
  the user says "write an ADR", "document this decision", or "why did we choose
  X over Y".
---

# Architecture Decision Record

Capture *why* a decision was made so future maintainers understand the context,
not just the outcome. Keep it short and durable.

## Template

```
# ADR-NNN: <short title>

## Status
Proposed | Accepted | Superseded by ADR-XXX

## Context
The forces at play: requirements, constraints, scale, deadlines, team skills.
What problem are we solving and why now?

## Decision Drivers
- <driver 1, e.g. must scale to 100x>
- <driver 2, e.g. team has no Kubernetes experience>

## Options Considered
### Option A — <name>
- Pros / Cons / Cost / Risk

### Option B — <name>
- Pros / Cons / Cost / Risk

## Decision
We chose <option> because <reasoning tied to drivers>.

## Consequences
- Positive: ...
- Negative / accepted trade-offs: ...
- Follow-ups / what this commits us to: ...
```

## Guidance
- Record the options you rejected and why — that's the valuable part
- Be honest about trade-offs accepted; no decision is free
- One decision per ADR; keep it immutable, supersede rather than edit
