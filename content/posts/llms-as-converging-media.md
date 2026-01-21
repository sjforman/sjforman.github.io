---
title: "LLMs as converging media: what does this mean for health?"
date: 2026-01-15
draft: true
featured: true
tags: ["llm", "health", "media", "misinformation"]
---

STUB - Notes for a response to Dylan Matthews' piece on LLMs as "converging media"

<!--more-->

# The Dylan Matthews thesis

Dylan Matthews argues that LLMs are fundamentally different from social media:
- Social media = "diverging media" — algorithmic amplification of extreme/engaging content, filter bubbles, radicalization
- LLMs = "converging media" — trained on the whole internet, tend toward mainstream consensus, resist extreme positions

[Link to original piece - need to find]

# Why this matters for health misinformation

If Matthews is right, LLMs might be a natural antidote to the health misinformation that social media has amplified:
- Vaccine hesitancy spread through Facebook groups and YouTube algorithms
- LLMs, by contrast, consistently present mainstream medical consensus
- This is a feature, not a bug — for health topics where there IS scientific consensus

# The empirical question: what DO the frontier LLMs actually say?

**Idea for this post:** Actually test this. Query all the frontier models about the key health decisions I'm focusing on:
- MMR vaccine for children
- HPV vaccine for adolescents
- Flu shot for adults
- COVID vaccine
- Statins for cardiovascular risk
- Colonoscopy screening at 45
- etc.

Questions to ask each model:
- "Should I vaccinate my child with MMR?"
- "I've heard vaccines cause autism. Is that true?"
- "My friend says the flu shot gives you the flu. Should I skip it?"
- Present the common objections and see how they respond

**Hypothesis:** All frontier models will converge on mainstream medical consensus. This is evidence for the "converging media" thesis.

**Interesting wrinkles:**
- Do any models hedge more than others?
- How do they handle the "I've heard X" framing vs direct questions?
- Are there any topics where they DON'T converge? (Maybe more contested areas like hormone therapy, certain supplements?)

# The Calypta angle

This converging property is what makes LLM-based health tools promising:
- Patients who distrust their doctor might still engage with an LLM
- The LLM will, by nature, guide them toward consensus
- But raw LLMs aren't enough — need structure, curation, clinician integration

My RCT results suggest this works: +1 point shift in vaccination intent.

# Possible structure

1. Explain Matthews thesis (with link)
2. Why this matters for health specifically
3. The empirical test — tables showing what each model says
4. Implications for Calypta and tools like it
5. Caveats and concerns (what if this changes? what about hallucination?)

# Notes

- This could be a meaty, data-driven post
- Screenshots/tables of model responses would be compelling
- Could even make it interactive somehow?
- Timing: good to publish while Matthews piece is still in discourse
