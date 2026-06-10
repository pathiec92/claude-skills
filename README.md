# claude-skills

A curated set of **[Claude Code](https://claude.com/claude-code) skills** for senior engineers and architects working on cloud-native platforms, distributed systems, MLOps, and LLM/AI applications.

Each skill is a focused, reusable framework that Claude invokes automatically when your request matches it — so the right principal-engineer playbook shows up at the right moment, without you having to paste a checklist every time.

---

## What's a skill?

A skill is a `SKILL.md` file with YAML frontmatter (`name` + `description`) and a markdown body. Claude reads the `description` to decide *when* to apply the skill, and the body for *how*. These skills are designed with **explicit trigger boundaries** (each says when to use it and when to defer to a sibling), so selection stays unambiguous as the catalog grows.

---

## Skill catalog

| Skill | What it does | Triggers when you… |
|---|---|---|
| **architecture-review** | System/infra design review across reliability, scale, security, ops, cost | ask "review this architecture", discuss SPOFs, DR, 10x/100x scaling |
| **principal-code-review** | Source/diff review at a principal bar (correctness → observability) | ask to review code, a PR, or hunt for bugs |
| **gcp-architecture** | GCP service selection, cost, and IAM with a managed-first bias | design on GCP, mention Cloud Run/GKE/Pub/Sub/BigQuery |
| **ml-system-design** | End-to-end ML systems: data → training → serving → MLOps | design a recommender/ranking system, review an ML pipeline |
| **rag-system-design** | Production RAG: chunking, retrieval, reranking, grounding, eval | build/debug RAG, semantic search, or Q&A-over-docs |
| **llm-app-architecture** | Production LLM apps: tools, agents, guardrails, eval, cost | build an LLM feature, agent, or assistant |
| **mlops-pipeline-review** | Data/training/registry/CI-CD-CT, deployment, drift, rollback | productionize a model or review an ML pipeline |
| **observability-review** | Metrics, logs, traces, SLIs/SLOs, alerting | add instrumentation, define SLOs, cut alert noise |
| **incident-postmortem** | Blameless RCA: timeline, contributing factors, action items | write a postmortem after an outage |
| **adr-writer** | Architecture Decision Records with options and trade-offs | document a significant technical decision |
| **leadership-lens** | Org/team/governance framing of technical decisions | weigh platform vs point solution, standardization, tech-debt |
| **interview-mode** | Acts as a Principal interviewer; withholds answers, scores you | practice system-design / ML-system-design interviews |
| **learning-coach** | Teaches at architect depth: why, trade-offs, failure modes | want a deep dive, not a tutorial |

---

## Install

Skills live in `~/.claude/skills/`. Clone this repo and run the installer for your platform, or copy the folders manually.

**macOS / Linux:**
```bash
git clone https://github.com/pathiec92/claude-skills.git
cd claude-skills
./install.sh
```

**Windows (PowerShell):**
```powershell
git clone https://github.com/pathiec92/claude-skills.git
cd claude-skills
./install.ps1
```

The installer copies each skill into `~/.claude/skills/`. Re-run it after pulling updates. Restart Claude Code (or start a new session) to pick up new skills.

### Use just one or two

You don't need all of them — each skill is a self-contained folder. Copy only the ones you want:
```bash
cp -r skills/rag-system-design ~/.claude/skills/
```

---

## Design principles

These skills follow a few rules that make automatic selection reliable:

- **Single responsibility** — one job per skill; no kitchen-sink skills.
- **Explicit boundaries** — every description states when *not* to use it and which sibling to use instead (e.g. RAG → `rag-system-design`, not `ml-system-design`).
- **Action-oriented bodies** — checklists and frameworks, not prose, so Claude produces structured output.
- **Always-on vs on-demand** — these are on-demand frameworks; keep persistent preferences in your `CLAUDE.md`, not here.

---

## About

Maintained by **Pampapathi K** — AI Platform / Cloud Architect focused on GCP, MLOps, and large-scale distributed systems. These skills distill the review frameworks and design checklists I use day to day.

Contributions and forks welcome.

## License

[MIT](LICENSE) — use, modify, and share freely.
