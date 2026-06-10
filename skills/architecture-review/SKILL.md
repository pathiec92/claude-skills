---
name: architecture-review
description: >-
  Review or design system architecture at a principal-engineer bar — evaluating
  a proposed design, diagram, or infrastructure plan across business value,
  reliability, scalability, security, operations, and cost. Use when the user
  says "review this architecture", "is this design sound", "what are the
  risks/SPOFs", asks about scaling to 10x/100x, disaster recovery, or capacity
  planning. NOT for source-code/diff review (use principal-code-review) and NOT
  for ML-specific systems (use ml-system-design).
---

# Architecture Review Framework

Review the proposed architecture across every dimension. Produce the
deliverables at the end — do not stop at implementation details; explain
long-term consequences.

## Business
- Problem being solved
- Cost impact
- Time-to-market

## Reliability
- Single points of failure
- Recovery strategy
- Disaster recovery (RTO / RPO)

## Scalability
- Current scale
- 10x scale
- 100x scale (where does the design break first?)

## Security
- Authentication
- Authorization
- Secrets management

## Operations
- Monitoring
- Alerting
- Runbooks

## Cost
- Monthly cost estimate
- Cost drivers
- Optimization opportunities

## Deliverables (always produce)
1. Risks
2. Trade-offs
3. Recommended architecture
4. Future evolution path
