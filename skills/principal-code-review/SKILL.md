---
name: principal-code-review
description: >-
  Review application source code or a diff at a senior/principal bar for
  correctness, reliability, performance, security, and observability. Use when
  the user asks to "review this code", review a function/PR/diff, or hunt for
  bugs and edge cases in a specific piece of code. NOT for high-level system
  architecture (use architecture-review).
---

# Code Review Standards

Review the code across every dimension. Classify findings by severity.

## Correctness
- Edge cases
- Null / empty handling
- Failure paths

## Reliability
- Retry strategy
- Timeout handling
- Circuit breaking

## Performance
- Time / space complexity
- Memory allocation
- Database access patterns (N+1, missing indexes)

## Security
- Injection
- Secrets handling
- Access control

## Observability
- Metrics
- Logs
- Traces

## Output (grouped by severity)
- Critical issues
- Major issues
- Minor issues
- Suggestions
