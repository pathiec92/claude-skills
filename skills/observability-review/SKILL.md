---
name: observability-review
description: >-
  Design or review observability — metrics, logs, traces, SLIs/SLOs/error
  budgets, dashboards, and alerting. Use when adding instrumentation, defining
  SLOs, reducing alert noise, or improving incident detection ("are we
  monitoring the right things", "set up SLOs", "why didn't we catch this").
---

# Observability Review

Observability is the ability to ask new questions of a system without shipping
new code. Optimize for fast diagnosis, not dashboard count.

## The three signals
- **Metrics** — RED (Rate, Errors, Duration) for services; USE (Utilization,
  Saturation, Errors) for resources
- **Logs** — structured, correlation IDs, appropriate levels, no PII/secrets
- **Traces** — distributed tracing across service boundaries; sampled sensibly

## SLIs / SLOs
- Define SLIs from the user's perspective (availability, latency, correctness)
- Set SLO targets and error budgets; tie alerting to budget burn
- Avoid vanity metrics; measure what users feel

## Alerting
- Alert on symptoms (SLO burn), not every cause
- Every alert must be actionable and have a runbook
- Page on user-impacting; ticket on the rest — kill noise

## Review questions
- Can you detect a partial outage before users report it?
- Can you localize a failure to a service/dependency in minutes?
- Is on-call drowning in non-actionable pages?
