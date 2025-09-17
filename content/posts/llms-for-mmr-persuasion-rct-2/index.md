---
title: "LLMs can help persuade parents to vaccinate their kids."
date: 2025-09-15
tags: ["vaccines", "llm", "rct"]
summary: "A preregistered active‑control RCT finds a clear increase in stated MMR vaccination intent after a short content review and an LLM conversation."
---

It seems pretty clear that us moderns are susceptible to vaccine misinformation partly because we’ve simply forgotten how bad these diseases are. Because they’re rare now. Because of vaccines. But in fact measles (just for example) is a nightmarish disease.

# Measles can kill years after the initial infection

Imagine your child catches it as an infant. Either you declined to vaccinate them, under the sway of fear-mongers, or they were infected during one of our increasingly frequent outbreaks, because other people refused to vaccinate *their* children.

Your kid is lucky. They have a high fever and they're miserable for a week, but they don’t get encephalitis (~1 in 1,000 measles cases), they’re not hospitalized (~1 in 4 in the U.S.), they don’t get pneumonia (~1 in 20 children), and they don’t die (1–3 in 1,000). [CDC clinical overview](https://www.cdc.gov/measles/hcp/clinical-overview.html#complications), [CDC signs & symptoms](https://www.cdc.gov/measles/signs-symptoms/index.html).

Or at least, they don't die yet. Because a few years later, they start having concerning neurological symptoms: forgetting words, nodding off at dinner. Then seizures. One day they don’t seem to recognize your face.

 They have subacute sclerosing panencephalitis (SSPE), a late complication of measles. It is almost always fatal.

Los Angeles County just reported a school‑aged child who died of SSPE from a measles infection acquired in infancy, [Ars Technica](https://arstechnica.com/health/2025/09/child-dies-of-horrifying-measles-complication-in-los-angeles/)). SSPE is rare (~1 in 10,000 after measles), but the risk is much higher (1 in 600) when the original infection happens in infancy ([LA County public health department](http://publichealth.lacounty.gov/phcommon/public/media/mediapubhpdetail.cfm?prid=5135)).

Many parents see lots of vivid false information about post-vaccine sequelae. I bet that almost none of them know about this *very real* and utterly devastating effect of the *virus itself*.

# If we don't act, it will be very bad

As vaccination rates continue to drop, epidemiologists have been sounding increasingly loud warnings. [Kiang et al.](https://doi.org/10.1001/jama.2025.6495) modelled re‑emergence under declining vaccination scenarios and found that at today's state‑level coverage, measles may become endemic again. Their model shows that a further 50% drop in childhood vaccination over 25 years would yield ~51 million measles cases (plus 10 million rubella cases and more than 4.3 million polio cases), more than 10 million hospitalizations, and ~160,000 deaths. Because these diseases are so contagious, the effect of declining vaccination rates is highly non-linear. Even a 10% drop plausibly translates into millions of additional cases and thousands of preventable deaths over a generation.

# I'm trying to do something about this looming disaster

I'm exploring ways to help stem the rising tide of vaccination refusal and spare a generation of children from deadly preventable diseases like measles. Specifically, I hypothesize that LLMs can help with this problem. I suspect that their encyclopedic knowledge, infinite patience, and ability to be resolutely non-judgmental can be a powerful force for good here.

Earlier this year I ran a [first experiment](/posts/llms-for-mmr-persuasion-rct-1), and found that both a brief LLM chat and a mandatory review of some carefully written static materials boosted parental vaccine intent modestly. I saw suggestive evidence that both were effective, although neither mode was clearly superior to the other.

Now I've completed a second trial applying some lessons learned from the first one.

# The focus: MMR-hesitant U.S.-based parents of kids under the age of 6

I recruited U.S.-resident parents of young children who at some point expressed to [Prolific](https://www.prolific.com/) that they had less than complete confidence in the safety of childhood vaccines. But as I discovered in my first experiment, many such parents are actually not hesitant in practice.  

So to focus on parents who have real qualms, this RCT included a two-phase screening process. 

First parents were asked to imagine receiving a message from their pediatric medical provider a week before an appointment indicating that their child is due to receive a dose of the MMR vaccine, with two buttons: `I have questions or concerns about MMR,` and `No questions or concerns about MMR.` Only parents with questions or concerns proceeded. More than half of the participants exited at this point (284 of 497, ~57%). 

Those remaining were asked: 

> At your well-visit next week, do you intend to have your child receive the MMR (measles, mumps, and rubella) vaccine?

Only parents whose baseline intention was 6 or less on a 1-7 scale (1 = "Definitely not", 7="Definitely yes") were randomized into the treatment or control group. An additional 33 participants (15% of the remaining 213) exited at this point, with 180 proceeding. 

Overall even with a starting pool of parents somewhat enriched for vaccine skepticism, only about one in three (180 of 497, 36%) of those who saw the mock‑appointment step proceeded to randomization (N = 180). At least with this specific setup and sample, vaccine skepticism didn't always translate directly into practical reluctance.

Those who remained were mostly young, conservative-leaning women. The randomized sample skewed female (≈69%) and conservative (≈52%), with a majority in the 25–34 age bracket (≈51%) and most of the remainder 35–44 (≈34%).

# I applied some lessons from the first experiment 

In RCT1, both of the interventions I tried seemed to work, leading me to wonder...why not both? So this time I combined them. Parents in the treatment group were asked to review some factual material about the MMR vaccine, and then to engage in a brief chat with an LLM (Claude 4 Sonnet).{{< ref "1" >}} Parents in the control completed a parallel experience, matched in structure, but covering a topic unrelated to vaccines (car seat safety). 

The control group in this experiment is thus a much closer match to the pre-appointment experience for most parents, namely no particular preparation for the vaccine discussion and decision at all!

I made a few other changes as well:

- The static content was more engaging and vivid, including **visualizations** of the relative risks of the vaccine vs. the measles virus itself, as well as an element of **anticipated regret**, telling stories of parents who regretted their decisions not to vaccinate their children, and inviting the participants to imagine that scenario. The content in RCT1 hewed more closely to the dry, factual tone of standard CDC materials.
- The prompts were constructed to use **motivational‑interviewing-style techniques** to mitigate the risk of reactance, and to persistently emphasize parental autonomy.
- Participants were asked to imagine an upcoming appointment, instructed that the purpose of their chat was to prepare for that visit, and that a summary of their chat transcript would be provided to their clinician. 

# Treatment group parents increased their MMR intent by a full point on the 7 point scale

Control group parents' vaccination intent did not meaningfully change (+≈0.03). On average, treatment group parents, by contrast, increased their vaccination intent by more than a full point (+≈1.07). The adjusted Treatment–Control difference was β̂ ≈  1.03; 95% CI 0.72–1.34. Nearly two thirds (~64%) of treatment group parents increased their intention by at least one point vs only about 1 in 10 in the control group.

{{< figure src="prepost-plot-1.png" title="Pre vs Post mean intention by arm" alt="Mean pre and post intention for Control and Treatment; Treatment increases by about one point, Control is flat." >}}

{{< figure src="ancova-coef-plot-1.png" title="Adjusted Treatment–Control effect (95% CI)" alt="Horizontal coefficient plot of the adjusted Treatment vs Control effect with a 95% confidence interval that does not include zero." >}}

# Next step: a clinical pilot

This study, like the first one, has self-reported vaccination intent as its endpoint. It's a good first step, but obviously it's not the same as shots in arms. 

My working plan is to wire something very much like what we tested here into a pediatric clinical workflow: a pre‑visit message routing hesitant parents into the intervention, then feeding a brief summary and context to the pediatric provider. The endpoint would be EHR‑confirmed on‑time MMR within 30 days. 

# Interested in collaborating?

{{< callout color="blue" >}}
If you run a pediatric practice and are interested in collaborating on a lightweight pilot, or if you'd like to support this work in any way, please reach out.

<div class="not-italic">
<form
  action="https://formspree.io/f/xwpbwpbp"
  method="POST"
  class="space-y-4 mt-4"
>
  <div>
    <label for="email" class="block text-sm font-medium text-blue-800 mb-2">Your email address</label>
    <input type="email" id="email" name="email" required class="form-field" placeholder="your@email.com" />
  </div>
  <div>
    <label for="message" class="block text-sm font-medium text-blue-800 mb-2">Your message</label>
    <textarea id="message" name="message" rows="4" required class="form-field" placeholder="Tell me about your interest in this project..."></textarea>
  </div>
  <button type="submit" class="btn-primary">Send Message</button>
</form>
</div>
{{< /callout >}}

## Full analysis and preregistration

- [R analysis workbook and output (HTML)](/mmr-2-analysis/index.html)
- [Machine‑readable markdown output (.md)](/mmr-2-analysis/analysis.md)
- [OSF preregistration](https://osf.io/qx46h)

{{< footnote "1" >}}Specifically: xxx{{< /footnote >}}