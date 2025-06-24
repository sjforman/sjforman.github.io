---
title: "Can LLMs persuade people to vaccinate their kids?"
date: 2025-06-05
tags: ["vaccines", "llm"]
draft: true
summary: I've been watching our 2025 measles outbreaks with growing horror. So I decided to try to do something about it.
---

I've been watching our 2025 measles outbreaks in [Texas](https://www.dshs.texas.gov/news-alerts/measles-outbreak-2025), [Ontario](https://www.reuters.com/en/ontario-reports-death-child-measles-2025-06-05/), and elsewhere with growing horror. 

I've also noticed researchers publishing a number of promising studies showing LLMs can be quite effective at changing people's minds, including by reducing their credence in conspiracy theories. It got me wondering: can they also be used to protect people, to help them to make wise choices about vaccination for their children? 

I've spent the last couple months trying to find out, and my preliminary answer is...maybe.

## Measles is terrible, and unnecessary 

Measles is a fucking nightmare, but it's one that we have basically *solved*. The vaccine works, and the objections people have to it are *entirely* spurious. 

Misinformation also imposes worse negative externalities here than almost any other arena. When people decline to vaccinate their children, they're also endangering all of us, including babies who aren't old enough to be fully vaccinated yet, immunocompromised people. [Kiang et al](https://jamanetwork.com/journals/jama/article-abstract/2833361) show in their recent JAMA paper that if vaccination rates continue to fall, measles will become endemic again: 

> At current state-level vaccination rates, measles may become endemic again; increasing vaccine coverage would prevent this. Under a 50% decline in childhood vaccination in the US, the simulation model predicted 51.2 million measles cases over a 25-year period, 9.9 million rubella cases, 4.3 million poliomyelitis cases, 197 diphtheria cases, 10.3 million hospitalizations, and 159 200 deaths. 

Every single one of those possible millions of cases is unnecessary and avoidable. It's maddening. So it seems to me that the case for using AI to push in the other direction is stronger than just about anywhere else.

## LLMs might be able to help

While AI persuasion remains somewhat understudied, some recent results suggest LLMs might be of use. [Costello et al.](https://www.science.org/doi/10.1126/science.adq1814) demonstrated that AI dialogues could durably reduce conspiracy beliefs.[Goel et al.](https://osf.io/preprints/osf/2vh4k_v1) showed that five-round conversations with ChatGPT-4o significantly reduced certainty in false or unsupported beliefs, although less so than conversations with human experts. And (describe the sketchy Dutch one here). 

None of these speak directly to the real-world behaviors that follow from dubious belief. Credence is one thing, but making major life decisions is another. So these results are suggestive, but don't directly address the question I'm interested in: can LLMs help people make wiser healthcare decisions?

## I designed an experiment to measure LLM impact on vaccination intent

Because the social sciences are littered with splashy p-hacked findings and file-drawer nulls, I preregistered my experiment with OSF: [Leveraging Conversational AI to Reduce MMR Vaccine Hesitancy: A Two‑Arm Online Experiment](https://osf.io/7upk5). 

Here's the setup:

**Participants**: I recruited 216 U.S. parents of children born in 2019 or later through [Prolific](https://app.prolific.com/register/researcher?ref=NRD2F4X413). I pre-screened for some level of vaccine hesitancy on Prolific's screening questions as well as a score less of less than 7 on my primary outcome measure:

**The Key Question**: "If you had to make a decision about the MMR (measles, mumps, and rubella) vaccine for your child tomorrow, how likely would you be to choose vaccination?" (1-7 scale: "Certain not to" to "Definitely would")

**Randomization**: Participants were randomly assigned using stratified minimization within intention score brackets to ensure balanced groups.

**Two Arms**:
1. **Standard Educational Materials (SEM)**: Participants reviewed 5 panels of CDC-style educational content, with a minimum 30-second exposure per panel (150 seconds total)
2. **Interactive Conversation Tool (ICT)**: Structured conversation with Claude 4 Sonnet with minimum engagement requirements (at least 3 turns of dialogue, plus a chat engagement score threshold)

The conversation tool used a carefully constructed prompt that took in as context some of the participant details shared in the pre-intervention survey, and then attempted to address the specific concerns participants flagged. The LLM prompt was framed around motivational interviewing techniques to avoid triggering reactance, provide evidence without being preachy or condescending, and engage empathetically with parental concerns.

**Additional Measures**: In addition to the primary intention outcome, I collected data on specific vaccine concerns (safety, effectiveness, ingredients, etc.), trust in healthcare providers, political ideology, and engagement metrics. For the ICT arm, I tracked conversation length, number of turns, and characters typed. I also included a behavioral proxy measure — whether participants clicked through to [vaccines.gov](vaccines.gov) after the intervention.

## I expected the interactive chat experience to outperform

Based on the Costello and Goel precedents, I hypothesized that we'd see a greater increase in vaccination intention in participants in the chat arm vs. those in the standard educational materials arm. I thought personalized, conversational engagement would be more persuasive than static content.

## The results surprised me 

**AI didn't outperform**: Vaccine intent increased by **0.54 points in the chat arm**, and by **0.4 points in the standard materials arm**. The between-group difference (\(b = 0.14\)) was not statistically significant (*t*(214) = 1.1, *p* = 0.27).

**But both interventions worked**:  Among participants with initial intention scores ≤ 6, *both conditions* produced meaningful increases in vaccination intention.

{{< figure src="/fig-delta-change-1.png" title="Change in intention by condition" alt="Distribution of individual Post–Pre intention changes for each arm with CI bars." >}}

Measuring from the initial pre-screen questionnaire all the way through to the post-intervention survey, the overall average intent increase was 0.67 points on the 7 point scale. This is at least partly a measurement effect, but it's pretty encouraging anyway; it's at the upper range of effect sizes typically seen for such interventions. 

**People engaged meaningfully**: Time spent didn't predict attitude change much, but the voluntary engagement patterns were striking. Some chat participants engaged well beyond the minimum requirements, having extended conversations about their concerns. The conversational format seems to be more engaging, even if not clearly more persuasive per unit time.

Here's an example exchange to demonstrate the quality and tone of the chat: 



## This looks promising, even if not what I was hoping to see

I didn't find a slam-dunk superiority effect, but these results point toward something interesting for patient decision support:

**Information Discovery**: The conversation logs reveal a lot of nuance in the participants' concerns. In a clinical setting, this kind of tool could help providers understand and address individual patient concerns.

**Reduced Reactance**: While not statistically significant, the conversational approach induced fewer backlash reactions, and a higher percentage of increased intention scores.

**Scalability**: LLM systems could provide personalized responses to common concerns 24/7, potentially reaching parents who might not otherwise engage with healthcare professionals about their hesitations.

Can AI tools help people engage more thoughtfully with health decisions? Based on these results the answer seems to be "yes, but it's not going to be a silver bullet."

## This seems well worth pursuing further

I considered including a third arm in this experiment that would have shown parents neutral educational materials about topics like sleep and nutrition. I omitted this to increase power to detect a difference between the standard and chat arms. But in retrospect I wish I had included it. 

Because the real control group for this kind of intervention — the standard of care that most people encounter in practice — is not 5 minutes of mandatory reading of the CDC's best case. It's *nothing*! 

So I'm planning a next iteration of this experiment:

* Treatment: a synthesis of the two approaches; informational materials, including graphics of some kind, alongside an AI chat experience 
* Control: a matching format, but with the content completely unrelated to vaccines

I'm also planning to integrate the pre-screening step into the experiment itself, instead of using a two-step screening process on Prolific.

The goal is to more clearly disentangle the effect of my new best stab at the intervention versus a proper control.

This kind of persuasion *does* seem to work to some degree; I'd like to get more signal on what exactly works best at shaping *intentions*. 

And then I'd like to test the best performing interventions in a real-world trial across a a few pediatric clinics and try to have an impact on the thing that really matters: shots in arms.


{{< callout color="blue" >}}
### Interested in collaborating?

If you're a pediatric medical practitioner interested in novel ways of tackling this problem, if you have funds you want to contribute, if you're a researcher or designer, or want to get involved in any way, I'd love to hear from you.

<div class="not-italic">
<form
  action="https://formspree.io/f/xwpbwpbp"
  method="POST"
  class="space-y-4 mt-4"
>
  <div>
    <label for="email" class="block text-sm font-medium text-blue-800 mb-2">Your email</label>
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

## The Complete Analysis

The preregistration is [available on OSF](https://osf.io/7upk5). An analysis aligned with that preregistration, along with various exploratory analyses, is available [here](/mmr-persuasion-analysis.html).