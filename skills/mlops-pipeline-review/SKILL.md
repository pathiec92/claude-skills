---
name: mlops-pipeline-review
description: >-
  Review or design an MLOps pipeline — data/feature pipelines, training and
  experiment tracking, model registry, CI/CD/CT, deployment strategies,
  monitoring, drift detection, and rollback. Use for ML platform or pipeline
  work, "how do I productionize this model", or reliability of an existing ML
  pipeline. For model/system design itself use ml-system-design.
---

# MLOps Pipeline Review

Assess the path from experiment to reliable production retraining. Automation and
reproducibility are the bar.

## Data & features
- Pipeline orchestration & scheduling
- Feature store (offline/online parity)
- Data validation & schema enforcement

## Training & tracking
- Reproducible training (pinned data + code + config)
- Experiment tracking & model lineage
- Model registry with stage promotion (staging → prod)

## CI/CD/CT
- CI: tests, lint, data validation
- CD: automated deployment with approval gates
- CT (continuous training): retrain triggers (schedule, drift, performance)

## Deployment
- Strategy: shadow → canary → progressive rollout
- A/B or interleaving for model comparison
- Rollback plan and versioned artifacts

## Monitoring
- Operational: latency, errors, throughput
- Model: input drift, prediction drift, performance decay
- Alerting tied to SLOs

## Governance
- Reproducibility & audit trail
- Access control on models/data
- Cost per training run and per prediction
