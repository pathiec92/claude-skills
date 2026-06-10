---
name: ml-system-design
description: >-
  Design or review an end-to-end ML/AI system across data, training, serving,
  MLOps, and scale — including feature stores, model serving, evaluation, and
  feedback loops. Use when the user asks to "design a recommendation/ranking
  system", review an ML pipeline, or discuss drift, model serving, or
  evaluation. For RAG specifically use rag-system-design; for LLM apps use
  llm-app-architecture; for generic (non-ML) systems use architecture-review.
---

# ML System Design Review

Evaluate every stage. Tie each choice back to a product/latency/cost constraint.

## Data
- Collection & sources
- Quality & validation
- Labeling strategy
- Versioning & lineage

## Training
- Feature engineering / feature store
- Model training & reproducibility
- Experiment tracking

## Serving
- Online inference (latency budget)
- Batch inference
- Model registry & versioning

## Operations
- Drift detection (data + concept)
- Monitoring & alerting
- Rollback / shadow / canary

## Scale & cost
- P95 latency
- Throughput
- Cost per prediction

## Always discuss
- Feature store
- Evaluation methodology (offline + online)
- Feedback loops & retraining triggers
