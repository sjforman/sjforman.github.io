---
title: "LLMs can help persuade parents to vaccinate their kids."
date: 2025-09-15
tags: ["vaccines", "llm", "rct"]
summary: "A preregistered active‑control RCT finds a clear increase in stated MMR vaccination intent after a short content review and an LLM conversation."
draft: false
---

It seems pretty clear that us moderns are susceptible to vaccine misinformation partly because we’ve simply forgotten how bad these diseases are. Because they’re rare now. Because of vaccines. But in fact measles (just for example) is a nightmarish disease.

# Measles can kill years after the initial infection

Imagine your child catches it as an infant. Either you declined to vaccinate them, under the sway of fear-mongers, or they were infected during one of our now recurring outbreaks, because other people refused to vaccinate *their* children.

Your kid is lucky. They have a high fever and they're miserable for a week, but they don’t get encephalitis (~1 in 1,000 measles cases), they’re not hospitalized (~1 in 4 in the U.S.), they don’t get pneumonia (~1 in 20 children), and they don’t die (1–3 in 1,000). [CDC clinical overview](https://www.cdc.gov/measles/hcp/clinical-overview.html#complications), [CDC signs & symptoms](https://www.cdc.gov/measles/signs-symptoms/index.html).

Or at least, they don't die yet. Because a few years later, they start having concerning neurological symptoms. They forget words. A fork clatters out of their hand; they nod off at dinner. Then jerks and seizures. Walking becomes shuffling, then stops. One day they don’t seem to recognize your face. 

They have something that is almost always fatal, called "subacute sclerosing panencephalitis" (SSPE), a late complication of measles. And Los Angeles County just reported a school‑aged child who died of SSPE from a measles infection acquired in infancy ([official release](http://publichealth.lacounty.gov/phcommon/public/media/mediapubhpdetail.cfm?prid=5135), [Ars Technica](https://arstechnica.com/health/2025/09/child-dies-of-horrifying-measles-complication-in-los-angeles/)). SSPE is rare overall (~1 in 10,000 after measles), but the risk jumps to about 1 in 600 when the original infection happens in infancy ([official release](http://publichealth.lacounty.gov/phcommon/public/media/mediapubhpdetail.cfm?prid=5135)).

Many parents see lots of vivid false information about post-vaccine sequelae. I bet that almost none of them know about this *very real* and utterly devastating effect of the *virus itself*.

# If we don't act, it could be real bad

Epidemiologists have been warning that a slide in coverage will not be gentle. Kiang et al. modelled re‑emergence under declining vaccination and found that at today’s state‑level coverage, measles may become endemic again. A 50% drop in childhood vaccination over 25 years would yield ~51.2 million measles cases (plus 9.9 million rubella, 4.3 million polio), ~10.3 million hospitalizations, and ~159,200 deaths. Even smaller declines matter; a 10% drop plausibly translates into millions of additional cases and thousands of preventable deaths over a generation. [JAMA 2025](https://doi.org/10.1001/jama.2025.6495).

# What can be done about this looming disaster? 

For the last few months I've been trying to figure out whether I can do anything to help stem the rising tide of vaccination refusal, and spare a generation of children from deadly preventable diseases like measles. Specifically, I've been exploring whether and how LLMs — infinitely patient, deeply knowledgeable, resolutely non-judgmental — help with this problem. 

Earlier this year I ran a first experiment, and found that both a brief chat, and a mandatory review of some carefully written static materials, could boost parental vaccine intent. I saw some suggestive evidence that both were effective; but neither was clearly superior. [link]

Now I've completed a second trial applying some lessons learned from the first one. And I'm feeling increasingly confident that this approach holds real promise.

# Who We Studied

## Many parents were screened out. 

We're still studying U.S.-resident parents of young children who at some point expressed to Prolific (the platform from which I recruited them) that they had less than complete confidence in the safety of childhood vaccines. 

Even after pre‑screening for vaccine hesitancy on Prolific, once people landed on our mock‑appointment page, many simply had no MMR qualms and exited (57.1%; N = 284 of 497). Among those who did have questions (N = 213), a slice were already at ceiling on the baseline item (15.5%; N = 33) and exited. Overall, 36.2% of those at the mock‑appointment step proceeded to randomization (N = 180). Translation: a light screen routes many parents past the intervention and focuses effort on the genuinely undecided.

## Those who remained were mostly young, conservative-leaning women.

As before, I recruited The randomized sample skews female (≈ 69%) and conservative (≈ 52%). Ages cluster in 25–34 (≈ 51%) and 35–44 (≈ 34%). Arms were balanced by batch; baseline intention was similar across batches.

# The intervention

## This RCT was more realistic in a few key ways

This time I compared a *combination* of the two interventions I tried in the first experiment. Parents in the treatment group were asked to review some factual material about the MMR vaccine, and then to engage in a brief chat with an LLM (specifically Claude 4 Sonnet). Parents in the control completed a parallel experience, matched in structure, but covering a topic unrelated to vaccines (car seat safety).

The control group in this sense is a closer match to the pre-appointment experience for most parents, namely no particular preparation for the vaccine discussion at all.

### What changed from RCT‑1

- Non‑MMR control. Here the control contains no vaccine content (car‑seat safety), versus MMR static content in RCT‑1.
- Primer + chat combo. Treatment combines a concise MMR primer with an LLM conversation (RCT‑1 tested chat alone vs static).
- MI‑tuned prompts. The conversation prompt and tone are explicitly motivational‑interviewing‑inspired to reduce reactance and keep engagement rules consistent across arms.

# The results

## The effect was large and significant — a full point on the 7 point scale

Parental MMR vaccination intent in the Control arm barely budged (+≈0.03 points), while parents in the Treatment arm increased intent by ≈ 1.07 points. The adjusted Treatment–Control difference is roughly a full point (β̂ ≈ 1.03; 95% CI 0.72–1.34). And nearly two thirds (~64%) of treatment group parents increased their intention by at least one point vs only about 1 in 10 in the control group.

{{< figure src="prepost-plot-1.png" title="Pre vs Post mean intention by arm" alt="Mean pre and post intention for Control and Treatment; Treatment increases by about one point, Control is flat." >}}

{{< figure src="ancova-coef-plot-1.png" title="Adjusted Treatment–Control effect (95% CI)" alt="Horizontal coefficient plot of the adjusted Treatment vs Control effect with a 95% confidence interval that does not include zero." >}}

## Other observations 

## Key transcripts

[Coming soon – brief analyses and anonymized excerpts from representative conversations.]

# What's next

## We're still just measuring intent — a proxy

This study uses intention as the outcome. That’s the right confirmatory target for a quick, inexpensive pre‑clinical RCT, but it’s not the same as shots in arms. The next step is to wire this into a clinic’s pre‑visit flow and measure EHR‑confirmed on‑time MMR.

## I think it's time to test this in a clinical setting

We’ve learned what we can from quick online studies. I’m planning a small clinic pilot that sends a pre‑visit SMS, routes hesitant parents into the MMR conversation, and delivers a one‑page summary to the pediatrician. Primary endpoint: EHR‑confirmed on‑time MMR within 30 days (CVX 03 / CPT 90707). If that looks good, we’ll scale to a multi‑site trial.

If you run a pediatric practice and would consider a lightweight pilot—or you’d like to support this work—please reach out. Let’s see if we can turn intention into immunizations.

## Full analysis and preregistration

- Full analysis (HTML): [/mmr-2-analysis/analysis.html](/mmr-2-analysis/analysis.html)
- Machine‑readable Markdown: [/mmr-2-analysis/analysis.md](/mmr-2-analysis/analysis.md)
- OSF preregistration: https://osf.io/qx46h