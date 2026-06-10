---
name: rag-system-design
description: >-
  Design or review a production RAG (retrieval-augmented generation) system —
  ingestion, chunking, embeddings, vector store, retrieval, reranking, prompt
  assembly, generation, and evaluation / hallucination control. Use when
  building or debugging RAG, semantic search, or Q&A-over-documents, or when
  retrieval quality is poor. NOT for generic ML systems (use ml-system-design).
---

# RAG System Design

Walk every stage. Most RAG failures are retrieval failures, not model failures —
diagnose retrieval before blaming the LLM.

## Ingestion & chunking
- Source parsing (PDF/HTML/code) and cleaning
- Chunk size & overlap; semantic vs fixed-size splitting
- Metadata captured per chunk (source, section, timestamp, ACL)

## Embeddings & index
- Embedding model choice and dimensionality
- Vector store & index type (HNSW/IVF); recall vs latency
- Hybrid search (dense + lexical/BM25)

## Retrieval & reranking
- top-k selection and filters (metadata, freshness, permissions)
- Reranker (cross-encoder) when precision matters
- Query rewriting / expansion / multi-query

## Generation & grounding
- Prompt assembly and context-window budgeting
- Citation / source attribution
- Refusal when context is insufficient (anti-hallucination)

## Evaluation
- Retrieval: recall@k, MRR, context precision
- Generation: faithfulness/groundedness, answer relevance
- Golden set + automated eval in CI

## Ops & cost
- Index freshness / re-embedding strategy
- Latency budget per stage
- Cost per query (embedding + retrieval + generation tokens)
