---
title: "LLMs and MMR Persuasion (RCT‑2)"
date: 2025-09-15
description: "A preregistered active-control RCT finds a clear increase in stated MMR vaccination intent after a short content review and LLM conversation."
summary: "A preregistered active-control RCT finds a clear increase in stated MMR vaccination intent after a short content review and LLM conversation."
draft: false
tags: [vaccines, llm]
---

This post links to the full analysis for RCT‑2 and a machine‑readable Markdown export.

- Full analysis (HTML, self‑contained): [/mmr-2-analysis/](/mmr-2-analysis/)
- Machine‑readable Markdown: [/mmr-2-analysis-md/analysis.md](/mmr-2-analysis-md/analysis.md)

Quick context:

- Design: two‑arm active control with mock‑appointment funnel; ANCOVA on post‑intent controlling for baseline intention
- Main result: adjusted Treatment–Control difference β̂ ≈ 1.03 (95% CI 0.72–1.34) on the 1–7 intention scale
- Responder summary: Δ ≥ +1 in ~`r sprintf('%.1f', prop_by_arm$Percent[prop_by_arm$Arm=='Treatment'])`% (Treatment) vs ~`r sprintf('%.1f', prop_by_arm$Percent[prop_by_arm$Arm=='Control'])`% (Control)

For full details (flow, sensitivity checks, durability follow‑up), see the linked analysis.
