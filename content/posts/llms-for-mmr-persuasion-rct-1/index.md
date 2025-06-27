---
title: "Can LLMs persuade people to vaccinate their kids?"
date: 2025-06-05
tags: ["vaccines", "llm"]
summary: I've been watching our 2025 measles outbreaks with growing horror. So I decided to try to do something about it.
---

I've been watching the measles outbreaks in [Texas](https://www.dshs.texas.gov/news-alerts/measles-outbreak-2025), [Ontario](https://www.reuters.com/en/ontario-reports-death-child-measles-2025-06-05/), and elsewhere with growing horror. 

I've also noticed a number of promising reports recently showing LLMs can be quite effective at changing people's minds, including by reducing their credence in conspiracy theories. It got me wondering: can they also be used to help people make wise choices about vaccination for their children? 

I've spent the last couple months trying to find out, and my preliminary answer is...maybe.

## Measles is terrible, and completely unnecessary 

Why focus on this? Because measles is a ghastly disease, and one that we have basically *solved*. The vaccine works, and essentially all of the objections people have to it are spurious. 

Misinformation also imposes especially consequential negative externalities here. When people decline to vaccinate their children, they're also endangering all of us, including babies who aren't old enough to be fully vaccinated yet, immunocompromised people. [Kiang et al](https://jamanetwork.com/journals/jama/article-abstract/2833361) show in their recent JAMA paper that if vaccination rates continue to fall, measles will become endemic again: 

> At current state-level vaccination rates, measles may become endemic again; increasing vaccine coverage would prevent this. Under a 50% decline in childhood vaccination in the US, the simulation model predicted 51.2 million measles cases over a 25-year period, 9.9 million rubella cases, 4.3 million poliomyelitis cases, 197 diphtheria cases, 10.3 million hospitalizations, and 159 200 deaths. 

If those millions of cases happen, every one will be unnecessary and avoidable. It's maddening. So it seems to me that the case for using AI to push in the other direction is stronger here than just about anywhere else.

## LLMs might be able to help

While AI persuasion remains somewhat understudied, some recent results suggest LLMs might be of use. [Costello et al.](https://www.science.org/doi/10.1126/science.adq1814) demonstrated that AI dialogues could durably reduce conspiracy beliefs. [Goel et al.](https://osf.io/preprints/osf/2vh4k_v1) showed that five-round conversations with ChatGPT-4o significantly reduced certainty in false or unsupported beliefs, although less so than conversations with human experts. And some Swiss researchers caused a big stir when they (deceptively, and ill-advisedly, in my opinion) [showed that LLMs deployed in the Reddit community /r/changemyview changed a lot of people's views](https://www.reddit.com/r/changemyview/comments/1k8b2hj/meta_unauthorized_experiment_on_cmv_involving/).

None of these speak directly to the real-world behaviors that follow from dubious belief. Credence is one thing, but making significant decisions is another. So these results are suggestive, but don't directly address the question I'm interested in: can LLMs help people make wiser healthcare decisions?

## An experiment to measure LLM impact on vaccination intent

Because the social sciences are littered with splashy p-hacked findings and file-drawer nulls, I preregistered my experiment with OSF: [Leveraging Conversational AI to Reduce MMR Vaccine Hesitancy: A Two-Arm Online Experiment](https://osf.io/7upk5). {{< ref "1" >}}

Here's the setup:

**Participants**: I recruited ~200 U.S. parents of children born in 2019 or later through [Prolific](https://app.prolific.com/register/researcher?ref=NRD2F4X413). I pre-screened for some level of vaccine hesitancy on Prolific's screening questions as well as a score of less than 7 on my primary outcome measure:

**The Key Question**: "If you had to make a decision about the MMR (measles, mumps, and rubella) vaccine for your child tomorrow, how likely would you be to choose vaccination?" (1-7 scale: "Certain not to" to "Definitely would")

**Randomization**: Participants were randomly assigned using stratified minimization within intention score brackets to ensure balanced groups.

**Two Arms**:
1. **Standard Educational Materials (SEM)**: Participants reviewed 5 panels of CDC-style educational content, with a minimum 30-second exposure per panel (150 seconds total)
2. **Interactive Conversation Tool (ICT)**: Structured conversation with Claude 4 Sonnet with minimum engagement requirements (at least 3 turns of dialogue, plus a chat engagement score threshold)

*Why no pure control group?* In real-world practice parents generally receive **no** focused vaccine information at all. I opted to devote limited sample size to comparing two active approaches rather than diluting power with a passive 'nothing' arm. A genuinely neutral‐content control is on the agenda for round two.

The conversation tool used a carefully constructed prompt that took in as context some of the participant details shared in the pre-intervention survey, and then attempted to address the specific concerns participants flagged. The LLM was instructed to use motivational interviewing techniques to avoid triggering reactance, provide evidence without being preachy or condescending, and engage empathetically with parental concerns.

**Additional Measures**: In addition to the primary intention outcome, I collected data on specific vaccine concerns (safety, effectiveness, ingredients, etc.), trust in healthcare providers, political ideology, and engagement metrics. For the ICT arm, I tracked conversation length, number of turns, and characters typed. I also included a behavioral proxy measure — whether participants clicked through to [vaccines.gov](vaccines.gov) after the intervention.

## I expected the interactive chat experience to outperform

Based on the Costello and Goel precedents, I hypothesized that we'd see a greater increase in vaccination intention in participants in the chat arm vs. those in the standard educational materials arm. I thought personalized, conversational engagement would be more persuasive than static content.

## The results surprised me 

**LLM chat didn't clearly outperform**: Vaccine intent increased by **0.54 points in the chat arm** on a 7 point Likert scale, and by **0.4 points in the standard materials arm**. But the between-group difference (\(b = 0.14\)) was not statistically significant (*t*(214) = 1.1, *p* = 0.27).

**On the other hand, both interventions worked**:  Among participants with initial intention scores ≤ 6, *both conditions* produced meaningful increases in vaccination intention!

{{< figure src="/fig-delta-change-1.png" title="Change in intention by condition" alt="Distribution of individual Post–Pre intention changes for each arm with CI bars." >}}

| Condition | Mean Δ (Post – Pre) |
|-----------|--------------------|
| Interactive Conversation Tool (ICT) | +0.54 |
| Standard Educational Materials (SEM) | +0.40 |

Measuring from the initial pre-screen questionnaire all the way through to the post-intervention survey, the overall average intent increase was 0.67 points on the 7 point scale. This is at least partly a measurement effect, but it's pretty encouraging anyway; it's at the upper range of effect sizes typically seen for such interventions. 

## Claude performed quite skillfully 

I read every chat transcript in detail, and found that Claude 4 Sonnet to be essentially flawless. The system delivered pertinent, factual, and nuanced answers to nearly all questions and concerns.

The only possible exceptions were some adversarial conversations in which I might have preferred for the LLM to push back a little harder. But the choices it made under the circumstances were certainly at least defensible.

## Some participants engaged quite deeply 

Many participants asked the same questions about side effects and ingredients, and a number of them explicitly acknowledged having their concerns assuaged: 

> That was actually very helpful and has made my decison alot easier. I feel like I learned some new things and I dont feel as cautious about the vaccine now.

> That puts it into perspective. I did not realize how serious measles could be or how common complications are. I feel more confident about the vaccine now. I wanted to ensure I wasn't overlooking anything. 

There was also a long tail of more nuanced situations: 

* One participant indicated uncertainty about the vaccine on the pre-survey, but in the chat it became clear that this person is not himself hesitant. His partner is. (Claude handled this gracefully.)
* Several people with religious objections to the porcine gelatin on the ingredient list were informed there's an alternative formulation available ([Priorix](https://www.fda.gov/vaccines-blood-biologics/priorix)) that does not contain this ingredient.
* Another person had detailed questions about the funding of the vaccine manufacturers, and got a solid lesson in corporate finance.

## This looks promising

I didn't find slam-dunk superiority but these results suggest some promising avenues for patient decision support nonetheless:

**Information Discovery**: The conversation logs reveal a lot of nuance in the participants' concerns. In a clinical setting, this kind of tool could help providers understand and address individual patient concerns more effectively and efficiently.

**Reduced Reactance**: While not statistically significant, the conversational approach induced fewer backlash reactions, and a higher percentage of increased intention scores. Notably, the only participant who took the time to send me an angry message through Prolific was in the standard educational materials arm. 

**Scalability**: A system like this one could provide personalized responses to common concerns 24/7 and with infinite patience, potentially reaching parents who might not otherwise engage with healthcare professionals about their hesitations.

## Well worth pursuing further

I considered including a third arm in this experiment, an active control with neutral educational materials about topics like sleep and nutrition. I omitted it to increase power to detect a difference between the standard and chat arms, but in retrospect I wish I had included it. Because the real world the standard of care that most people encounter in practice is not 5 minutes of mandatory reading of the CDC's best case. It's *nothing*! 

## On to V2

I'm planning a next iteration of this experiment:

* Treatment: a synthesis of the two approaches; informational materials, including graphics of some kind, alongside an AI chat experience 
* Control: matching format, but with content unrelated to vaccines

The goal is to more clearly disentangle the effect of a new best stab at the intervention vs. a more realistic control.

This kind of persuasion does seem to work to some degree. So I'm looking for a clearer signal on what works best at shaping intentions. 

If I can get clear on that, the next step will be to test the best performing interventions in a real-world trial in a handful of pediatric clinics. Because the real goal is more shots in arms and measles back in abeyance where it belongs.

{{< callout color="blue" >}}
### Interested in collaborating?

If you're a pediatric medical practitioner interested in novel ways of tackling this problem, a researcher or designer, interested in funding this work, or want to get involved in any way, I'd love to hear from you.

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

## Full analysis

The preregistration [was published on OSF](https://osf.io/7upk5). An analysis aligned with that preregistration, along with various exploratory analyses, is available [here](/mmr-persuasion-analysis.html).

{{< footnote "1" >}}The study was self-certified as exempt from IRB review under U.S. 45 CFR 46. A signed attestation is included in the preregistration materials.{{< /footnote >}}