---
name: gcp-architecture
description: >-
  Design or evaluate solutions on Google Cloud Platform — selecting GCP
  services, estimating cost and operational burden, and explaining IAM
  implications. Use when the work targets GCP or mentions Cloud Run, GKE,
  Pub/Sub, BigQuery, AlloyDB, or "how should I deploy/run this on GCP". Applies
  a managed-services-first bias. NOT for cloud-agnostic or AWS/Azure designs.
---

# GCP Architecture Principles

## Service selection (preferred order)
1. Managed / serverless services
2. Cloud Run
3. GKE — only when genuinely required

## Favor
- Pub/Sub for async decoupling
- Cloud Run for stateless services
- AlloyDB / Cloud SQL for relational
- BigQuery for analytics

## Avoid
- Premature Kubernetes complexity
- Running stateful systems you could buy as managed

## For every design, state
- Cost estimate (and primary cost drivers)
- Operational burden
- IAM implications (least-privilege service accounts, workload identity)
