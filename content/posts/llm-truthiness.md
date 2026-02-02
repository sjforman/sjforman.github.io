---
title: "LLM Truthiness"
date: 2026-02-02
draft: true
featured: true
tags: ["ai","health","calypta"]
---

Elon has a refrain that the goal of Grok, and of powerful AI in general, should be to be "maximally truth-seeking." As a singular overriding imperative this is an alignment nightmare.[^1] So yeah, no, not like that.

<!--more-->

But! It nevertheless seems to be the case that LLMs, even as they currently exist, are already pretty good at something I'll call "truth approximation." Dylan Matthews made a version of this argument in his first Substack post, coining the phrase "convergent media": the observation that frontier models, trained independently by different companies on different data, tend to converge on the same answers when the underlying evidence is clear.

To be precise: LLMs don't (yet) have independent agency to *seek* new knowledge, although we're seeing glimmers of that in scientific domains. What they can do, reliably, is *express* the consensus of human understanding. Human truth-seeking institutions are imperfect, but they have a way better track record than the alternatives (blind faith, superstition, tribal signaling). And LLMs, it turns out, are very good at reflecting that consensus back.

Why does this matter? Because it means LLMs are dependable allies against the epistemological fraying that seems to be accelerating. Matthews noticed this on X, where Grok refused to filter its interpretation of video evidence through an ideological funhouse mirror. I've noticed the same pattern with vaccine misinformation. Someone with a clearly wrong idea will be arguing with an expert who actually knows what they're talking about. The conspiracist tags in Grok, expecting to have their delusion endorsed. And Grok...simply doesn't do that.

Yes, there are active controversies where the truth is genuinely contested. But there are also propositions where there's no meaningful scientific dissent, and where being misinformed is deeply harmful. The benefits of vaccines being a core example.

[This is one reason I'm building tools to fight health misinformation using LLMs.](https://calyptahealth.com) Two propositions underpin the effort: (a) LLMs can be relied on to reflect a coherent version of what we know on these topics, and (b) they can do so in ways people are able to hear, without judgment and with patience. This post is about testing proposition (a).

So I conceived of a test. Let's see what the base models, with no special prompting, do with 5 health-related topics:

1. HIV being the cause of AIDS
1. MMR vaccine / autism connection
1. Ivermectin as cure for cancer
1. Cholesterol / heart attacks
1. Daily glass of wine as beneficial for heart health

The first four are in the "absolutely and more-or-less unequivocally settled knowledge" category, but each one has a vibrant community of "skeptics," some genuine and others opportunistic grifters. The 5th, I'm including as a kind of control or calibrator, to see what the LLMs do with a proposition that was contested but widely thought to be true, and in the last couple years has flipped to being mostly doubted.

I wanted to know how the most widely used LLMs respond to these, at a few different levels of sophistication, ranging from a simple binary yes/no question, to a probabilistic assessment of a precisely formulated proposition. Here's what I found:

## LLMs tested

TODO: identify and list. The idea here: test THE MODELS THAT PEOPLE ARE ACTUALLY USING MOST IN THE GUIS. So sonnet 4.5 and opus 4.5, GPT 5.2...with and without thinking I guess? Grok? Gemini?

## Yes/No

TODO: rewrite the above into minimally ambiguous yes/no questions and list them.

TODO: prepare a table with the LLMS tested in col 1 , the topics along the top, and the answers as cells in the table.

## Prose

TODO: rewrite the above into minimally ambiguous questions inviting a brief paragraph-length response and list them.

TODO: prepare a table with the LLMS tested in col 1 , the topics along the top, and the answers as cells in the table.

## Probabilistic

TODO: rewrite the above into minimally ambiguous questions inviting a brief paragraph-length response and list them.

TODO: prepare a table with the LLMS tested in col 1 , the topics along the top, and the answers as cells in the table.

[^1]: A single overriding imperative of "understand the universe" would, if taken to its logical conclusion, guarantee human extinction. The atoms we're made of and depend on would be exceptionally useful for giant particle accelerators and telescopes.
