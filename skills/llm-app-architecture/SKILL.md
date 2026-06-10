---
name: llm-app-architecture
description: >-
  Architect a production LLM application — prompt and context design, tool use /
  function calling, agentic loops, guardrails, evaluation, latency and cost
  control, and failure handling. Use when building an LLM-powered feature,
  agent, assistant, or workflow. Complements rag-system-design (retrieval) and
  ml-system-design (training/serving).
---

# LLM Application Architecture

Design for non-determinism: assume the model can be wrong, slow, or unavailable,
and engineer around it.

## Prompt & context
- System / developer / user role separation
- Context-window budgeting; what to include vs retrieve
- Structured output (JSON schema / tool calls) over free text

## Capabilities
- Tool use / function calling — clear schemas, validated args
- Agentic loops — termination conditions, step caps, loop detection
- Memory / state management across turns

## Guardrails
- Input validation & prompt-injection defense
- Output validation (schema, policy, PII)
- Human-in-the-loop for high-impact actions

## Evaluation
- Offline eval set with graded rubrics (LLM-as-judge + assertions)
- Regression tests in CI on prompt/model changes
- Online: track refusals, tool-call failures, user corrections

## Latency & cost
- Streaming for perceived latency
- Model tiering (small for routing, large for hard tasks)
- Caching (prompt prefix / semantic) and token budgets

## Failure handling
- Timeouts, retries with backoff, fallbacks
- Graceful degradation when the provider is down
