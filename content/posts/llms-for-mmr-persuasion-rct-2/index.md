---
title: "It appears that LLMs can help persuade parents to vaccinate their kids..."
date: 2025-09-15
tags: ["vaccines", "llm", "rct"]
summary: "A preregistered active‑control RCT finds a clear increase in stated MMR vaccination intent after a short content review and an LLM conversation."
draft: false
---

I'm pretty convinced that part of the reason affluent compfortable people in the west are so susceptible to vaccine misinformation is that they have simply forgotten how bad these diseases are. Because they're rare now. Because of vaccines. 

But in fact, measles for instance, is a nightmarish disease. [SSPE anecdote — recent death — describe in graphic terms what this is and what it looks like. Try to get the reader to really imagine it.]

### What can be done about this looming disaster? 

For the last few months I've been trying to figure out whether I can do anything to help stem the rising tide of vaccination refusal, and spare some (hopefully many!) children from deadly preventable diseases like measles. 

And specifically, can LLMs — infinitely patient, deeply knowledgeable, resolutely non-judgmental — help with this problem. 

Earlier this year I ran a first experiment, and found that both a brief chat, and a mandatory review of some carefully written static materials, could boost parental vaccine intent. I saw some suggestive evidence that both were effective; but neither was clearly superior. [link]

Now I've completed a second trial applying some lessons learned from the first one. And I'm feeling increasingly confident that I'm onto something here. 

## This RCT was more realistic in a few key ways

We're still studying U.S.-resident parents of young children who at some point expressed to Prolific (the platform from which I recruited them) that they had less than complete confidence in the safety of childhood vaccines. 

But this time I was comparing a *combination* of the two interventions I tried in the first experiment — a brief review of some content, followed by a brief chat with an LLM — to an "active control" — a parallel experience, matched in structure, but covering a topic unrelated to vaccines (car seat safety.) 

The control group in this sense is a closer match to the pre-appointment experience for most parents, namely no particular preparation for the vaccine discussion at all.

## The Treatment increased intention by ~1 point; Control barely moved

Among parents with head‑room at baseline (≤ 6 on a 1–7 scale), the Control arm changed by ≈ 0.03 points, while the Treatment arm increased by ≈ 1.07 points. The adjusted Treatment–Control difference is about a full point (β̂ ≈ 1.03; 95% CI 0.72–1.34). And 63.7% of Treatment participants increased their intention by at least one point vs 12.4% of Control.

{{< figure src="prepost-plot-1.png" title="Pre vs Post mean intention by arm" alt="Mean pre and post intention for Control and Treatment; Treatment increases by about one point, Control is flat." >}}

{{< figure src="ancova-coef-plot-1.png" title="Adjusted Treatment–Control effect (95% CI)" alt="Horizontal coefficient plot of the adjusted Treatment vs Control effect with a 95% confidence interval that does not include zero." >}}

{{< figure src="trajectories-1.png" title="Individual trajectories (Pre → Post)" alt="Slopegraph of each participant’s pre and post intention by arm; most Treatment lines slope upward, Control mostly flat." >}}

## Most screened parents still didn’t need us; undecided parents did

Even after pre‑screening for vaccine hesitancy on Prolific, once people landed on our mock‑appointment page:

- 42.9% clicked “I have questions/concerns” (N = 213 of 497)
- 57.1% clicked “No concerns about the MMR vaccine” (N = 284)
- Of those with questions/concerns, 15.5% were already at ceiling (7) and exited (N = 33)
- 84.5% had baseline ≤ 6 and proceeded to the intervention (N = 180)
- Overall reach to the intervention: 36.2% of those at the mock‑appointment step

Translation: a light screen routes many parents past the intervention, and focuses effort on those who are truly undecided.

## Who took part

The randomized sample skews female (≈ 69%) and conservative (≈ 52%). Ages cluster in 25–34 (≈ 51%) and 35–44 (≈ 34%). Arms were balanced by batch; baseline intention was similar across batches.

## What changed from RCT‑1 (and why that matters)

In RCT‑1, we compared an LLM chat to CDC‑style static materials about MMR; both moved intention, and the difference between arms wasn’t significant. Here, the control does not include MMR content. The Treatment also combines a concise MMR primer with conversation and uses more polished prompts tuned to motivational interviewing.

The result is a larger, clearer contrast that’s closer to the real‑world decision: get some targeted, empathetic help now vs. get nothing.

## What the experience felt like

Simple by design: four plain‑language panels, then a conversation that listens, reflects, and answers questions without lecturing. The style is MI‑inspired—curious and non‑judgmental, but clear about the evidence.

## What we didn’t measure yet (and will next)

This study uses intention as the outcome. That’s the right confirmatory target for a quick, inexpensive pre‑clinical RCT, but it’s not the same as shots in arms. The next step is to wire this into a clinic’s pre‑visit flow and measure EHR‑confirmed on‑time MMR.

## Key transcripts

[Coming soon – brief analyses and anonymized excerpts from representative conversations.]

## Full analysis and preregistration

- Full analysis (HTML): [/mmr-2-analysis/analysis.html](/mmr-2-analysis/analysis.html)
- Machine‑readable Markdown: [/mmr-2-analysis/analysis.md](/mmr-2-analysis/analysis.md)
- OSF preregistration: https://osf.io/qx46h

## Time to test this in a clinic

We’ve learned what we can from quick online studies. I’m planning a small clinic pilot that sends a pre‑visit SMS, routes hesitant parents into the MMR conversation, and delivers a one‑page summary to the pediatrician. Primary endpoint: EHR‑confirmed on‑time MMR within 30 days (CVX 03 / CPT 90707). If that looks good, we’ll scale to a multi‑site trial.

If you run a pediatric practice and would consider a lightweight pilot—or you’d like to support this work—please reach out. Let’s see if we can turn intention into immunizations.
