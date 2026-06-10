---
name: incident-postmortem
description: >-
  Facilitate a blameless postmortem / root-cause analysis after an incident —
  timeline, impact, contributing factors (5 Whys), detection and response gaps,
  and concrete action items with owners. Use after an outage or degradation, or
  when writing an RCA / incident report.
---

# Blameless Postmortem

Focus on systems and conditions, not individuals. The goal is learning and
prevention, never blame.

## Structure

### 1. Summary
- What happened, in two sentences
- Severity, duration, user/business impact

### 2. Timeline
- Detection → diagnosis → mitigation → resolution (with timestamps)
- What signals fired (or should have)

### 3. Impact
- Users affected, requests failed, revenue/SLA impact
- Blast radius

### 4. Contributing factors (not a single "root cause")
- Use 5 Whys, but allow multiple causal chains
- Distinguish trigger from latent conditions

### 5. What went well / poorly
- Detection time, response, communication, tooling

### 6. Action items
- Specific, owned, dated
- Prevent recurrence AND improve detection/response
- Distinguish quick mitigations from systemic fixes

## Principles
- Assume everyone acted reasonably with the information they had
- "Human error" is a starting point for investigation, not a conclusion
