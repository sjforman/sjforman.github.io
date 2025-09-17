---
title: "LLMs can help persuade parents to vaccinate their kids."
date: 2025-09-15
tags: ["vaccines", "llm", "rct"]
summary: "A preregistered active‑control RCT finds a clear increase in stated MMR vaccination intent after a short content review and an LLM conversation."
draft: true 
---

It seems pretty clear that us moderns are susceptible to vaccine misinformation partly because we’ve simply forgotten how bad these diseases are. Because they’re rare now. Because of vaccines. But in fact measles (just for example) is a nightmarish disease.

# Measles can kill years after the initial infection

Imagine your child catches it as an infant. Either you declined to vaccinate them, under the sway of fear-mongers, or they were infected during one of our increasingly frequent outbreaks, because other people refused to vaccinate *their* children.

Your kid is lucky. They have a high fever and they're miserable for a week, but they don’t get encephalitis (~1 in 1,000 measles cases), they’re not hospitalized (~1 in 4 in the U.S.), they don’t get pneumonia (~1 in 20 children), and they don’t die (1–3 in 1,000). [CDC clinical overview](https://www.cdc.gov/measles/hcp/clinical-overview.html#complications), [CDC signs & symptoms](https://www.cdc.gov/measles/signs-symptoms/index.html).

Or at least, they don't die yet. Because a few years later, they start having concerning neurological symptoms: forgetting words, nodding off at dinner. Then seizures. One day they don’t seem to recognize your face.

 They have subacute sclerosing panencephalitis (SSPE), a late complication of measles. It is almost always fatal.

Los Angeles County just reported a school‑aged child who died of SSPE from a measles infection acquired in infancy, [Ars Technica](https://arstechnica.com/health/2025/09/child-dies-of-horrifying-measles-complication-in-los-angeles/)). SSPE is rare (~1 in 10,000 after measles), but the risk is much higher (1 in 600) when the original infection happens in infancy ([LA County public health department](http://publichealth.lacounty.gov/phcommon/public/media/mediapubhpdetail.cfm?prid=5135)).

Many parents see lots of vivid false information about post-vaccine sequelae. I bet that almost none of them know about this *very real* and utterly devastating effect of the *virus itself*.

# If we don't act, it will very bad

As vaccination rates continue to drop, epidemiologists have been sounding increasingly loud warnings. [Kiang et al.](https://doi.org/10.1001/jama.2025.6495) modelled re‑emergence under declining vaccination scenarios and found that at today's state‑level coverage, measles may become endemic again. Their model shows that a further 50% drop in childhood vaccination over 25 years would yield ~51 million measles cases (plus 10 million rubella cases and more than 4.3 million polio cases), more than 10 million hospitalizations, and ~160,000 deaths. Because these diseases are so contagious, the effect of declining vaccination rates is highly non-linear. Even a 10% drop plausibly translates into millions of additional cases and thousands of preventable deaths over a generation.

# What can be done about this looming disaster? 

I'm exploring ways to help stem the rising tide of vaccination refusal and spare a generation of children from deadly preventable diseases like measles. Specifically, I hypothesize that LLMs can help with this problem. I suspect that their encyclopedic knowledge, infinite patience, and ability to be resolutely non-judgmental can be a powerful force for good here.

Earlier this year I ran a [first experiment](/posts/llms-for-mmr-persuasion-rct-1), and found that both a brief LLM chat and a mandatory review of some carefully written static materials boosted parental vaccine intent modestly. I saw suggestive evidence that both were effective, although neither mode was clearly superior to the other.

Now I've completed a second trial applying some lessons learned from the first one.

# We narrowed our sample to MMR-hesitant U.S. parents of young kids

I recruited U.S.-resident parents of young children who at some point expressed to [Prolific](https://www.prolific.com/) that they had less than complete confidence in the safety of childhood vaccines. But as I discovered in my first experiment, many such parents are actually not hesitant in practice.  

So to focus on parents who have real qualms, this RCT included a two-phase screening process. 

First parents were asked to imagine receiving a message from their pediatric medical provider a week before an appointment indicating that their child is due to receive a dose of the MMR vaccine, with two buttons: `I have questions or concerns about MMR,` and `No questions or concerns about MMR.` Only parents with questions or concerns proceeded. More than half of the participants exited at this point (284 of 497, ~57%). 

Those remaining were asked: 

> At your well-visit next week, do you intend to have your child receive the MMR (measles, mumps, and rubella) vaccine?

Only parents whose baseline intention was 6 or less on a 1-7 scale (1 = "Definitely not", 7="Definitely yes") were randomized into the treatment or control group. An additional 33 participants (15% of the remaining 213) exited at this point, with 180 proceeding. 

Overall even with a starting pool of parents somewhat enriched for vaccine skepticism, only about one in three (180 of 497, 36%) of those who saw the mock‑appointment step proceeded to randomization (N = 180). At least with this specific setup and sample, vaccine skepticism didn't always translate directly into practical reluctance.

## Those who remained were mostly young, conservative-leaning women.

The randomized sample skewed female (≈69%) and conservative (≈52%), with a majority in the 25–34 age bracket (≈51%) and most of the remainder 35–44 (≈34%).

# I applied some lessons from the first experiment 

In RCT1, both of the interventions I tried seemed to work, leading me to wonder...why not both? So this time I combined them. Parents in the treatment group were asked to review some factual material about the MMR vaccine, and then to engage in a brief chat with an LLM (Claude 4 Sonnet).{{< ref "1" >}} Parents in the control completed a parallel experience, matched in structure, but covering a topic unrelated to vaccines (car seat safety). 

The control group in this experiment is thus a much closer match to the pre-appointment experience for most parents, namely no particular preparation for the vaccine discussion and decision at all!

I made a few other changes as well:

- The static content was more engaging and vivid, including **visualizations** of the relative risks of the vaccine vs. the measles virus itself, as well as an element of **anticipated regret**, telling stories of parents who regretted their decisions not to vaccinate their children, and inviting the participants to imagine that scenario.
- The prompts were constructed to use **motivational‑interviewing-style techniques** to mitigate the risk of reactance, and to persistently emphasize parental autonomy.

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

- Full analysis (HTML): [/mmr-2-analysis/analysis.html](/mmr-2-analysis/index.html)
- Machine‑readable Markdown: [/mmr-2-analysis/analysis.md](/mmr-2-analysis/analysis.md)
- OSF preregistration: https://osf.io/qx46h

{{< footnote "1" >}}Specifically: xxx{{< /footnote >}}