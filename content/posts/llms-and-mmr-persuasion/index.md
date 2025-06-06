---
title: "Can LLMs persuade people to vaccinate their kids?"
date: 2025-06-05
tags: ["vaccines", "llm"]
draft: true
---

I've been watching our 2025 measles outbreaks in [Texas](https://www.dshs.texas.gov/news-alerts/measles-outbreak-2025), [Ontario](https://www.reuters.com/en/ontario-reports-death-child-measles-2025-06-05/), with growing horror. I've also noticed researchers publishing a number of promising studies showing LLMs can be quite effective at changing people's minds, including by reducing their credence in conspiracy theories. It got me wondering: can they also be used to protect people, to help them to make wise choices about vaccination for their children? I've spent the last couple months trying to find out, and my preliminary answer is...maybe.

<!--more-->

## Measles is terrible, and unnecessary 

Measles is a fucking nightmare, but it's one that we have basically *solved*. The vaccine works, and the objections people have to it are *entirely* spurious. If AI persuasion is worth doing at all, it's worth doing here. I feel as confident about the wisdom of MMR vaccination as I do about almost any other proposition other than "I am currently experiencing qualia."

Misinformation also imposes worse negative externalities here than almost any other arena. When people decline to vaccinate their children, they're also endangering all of us, including babies who aren't old enough to be fully vaccinated yet, immunocompromised people. [Kiang et al](https://jamanetwork.com/journals/jama/article-abstract/2833361) show in their recent JAMA paper that if vaccination rates continue to fall, measles will become endemic again: 

> At current state-level vaccination rates, measles may become endemic again; increasing vaccine coverage would prevent this. Under a 50% decline in childhood vaccination in the US, the simulation model predicted 51.2 million measles cases over a 25-year period, 9.9 million rubella cases, 4.3 million poliomyelitis cases, 197 diphtheria cases, 10.3 million hospitalizations, and 159 200 deaths. 

Every single one of those possible millions of cases is unnecessary and avoidable. It's maddening. So it seems to me that the case for using AI to push in the other direction is stronger than just about anywhere else.

## AI might be able to help protect us

While AI persuasion remains someone under-studied, there are also good reasons to think engagement with LLMs might do some good here. [Costello et al.](https://www.science.org/doi/10.1126/science.adq1814) demonstrated that AI dialogues could durably reduce conspiracy beliefs.[Goel et al.](https://osf.io/preprints/osf/2vh4k_v1) showed that five-round conversations with ChatGPT-4o significantly reduced certainty in false or unsupported beliefs, although less so than conversations with human experts. And (describe the sketchy Dutch one here). 

None of these speak directly to the real-world behaviors that follow from dubious belief. Credence is one thing, but making major life decisions is another. So these results are suggestive, but don't directly address the question I'm interested in: can LLMs help people make wiser healthcare decisions?

## I designed an experiment to measure LLM impact on vaccination intent

Because the social sciences are littered with splashy p-hacked findings and file-drawer nulls, I preregistered my experiment with OSF: [Leveraging Conversational AI to Reduce MMR Vaccine Hesitancy: A Two‑Arm Online Experiment](https://osf.io/7upk5). 

Here's the setup:

**Participants**: I recruited 216 U.S. parents of children born in 2019 or later through [Prolific](https://app.prolific.com/register/researcher?ref=NRD2F4X413). I pre-screened for some level of vaccine hesitancy on Prolific's screening questions as well as a score less of less than 7 on my primary outcome measure:

**The Key Question**: "If you had to make a decision about the MMR (measles, mumps, and rubella) vaccine for your child tomorrow, how likely would you be to choose vaccination?" (1-7 scale: "Certain not to" to "Definitely would")

**Randomization**: Participants were randomly assigned using stratified minimization within intention score brackets to ensure balanced groups.

**Two Arms**:
1. **Standard Educational Materials (SEM)**: Participants reviewed 5 panels of CDC-style educational content, with a minimum 30-second exposure per panel (150 seconds total)
2. **Interactive Conversation Tool (ICT)**: Structured conversation with Claude 4.0, with minimum engagement requirements (at least 3 turns of dialogue, plus a chat engagement score threshold)

The conversation tool used a carefully constructed prompt, that took in as context some of the participant details shared in the pre-intervention survey, and then attempted to address specific concerns participants had flagged. Motivational interviewing techniques aimed to avoid triggering reactance, provide evidence-based information without being preachy, and engage empathetically with parental concerns.

**Additional Measures**: Beyond the primary intention outcome, I collected data on specific vaccine concerns (safety, effectiveness, ingredients, etc.), trust in healthcare providers, political ideology, and engagement metrics. For the ICT arm, I tracked conversation length, number of turns, and characters typed. I also included a behavioral proxy measure — whether participants clicked through to vaccines.gov after the intervention.

## I expected the interactive chat experience to outperform the static content 

Based on the Costello and Goel precedents, I hypothesized that the Interactive Conversation Tool would lead to a greater increase in vaccination intention compared to standard educational materials. I thought personalized, conversational engagement would be more persuasive than static content.

I also had secondary hypotheses about engagement predicting intention change, and exploratory hypotheses about potential moderators (baseline concerns, political ideology, trust in providers).

## What I found surprised me 

Both interventions increased vaccination intention significantly from baseline — encouraging! But while the AI conversation slightly outperformed the standard materials, the difference was small and not statistically significant.

**AI didn't outperform**: While participants in the ICT condition showed a slightly larger increase in vaccination intention (Cohen's d ≈ 0.15), the 95% confidence interval included zero. AI wasn't meaningfully superior to well-designed educational materials.

**But both...worked?**:  Among participants with initial intention scores ≤ 6, *both conditions* produced meaningful increases in vaccination intention. Overall on average, intention scores increased by X, or Y%. While I can't rule out that some of this was due to mere measurement effects, the magnitude of the increase is at the top of the range of what is typically observed for such effects.

**People engaged meaningfully**: Time spent didn't predict attitude change much, but the voluntary engagement patterns were striking. Some participants in the ICT condition engaged far beyond the minimum requirements, having extended conversations about their concerns. This suggests the conversational format might be inherently more engaging, even if not more persuasive per unit time.

## This looks promising, if not the slam dunk I was hoping to see

Even though I didn't find a slam-dunk superiority effect, these results point toward something interesting for patient decision support:

**Information Discovery**: The conversation logs revealed the specific concerns each participant had, creating a rich dataset of what actually worries vaccine-hesitant parents. In a clinical setting, this kind of tool could help providers understand and address individual patient concerns more effectively.

**Reduced Reactance**: While not statistically significant, the conversational approach seems to have induced fewer backlash reactions, and a higher percentage of increased intention scores. This is what motivational interviewing has been shown to do, and AI can do it. Static content can't. 

**Scalability**: Unlike one-on-one counseling with healthcare providers, an AI system could provide personalized responses to common concerns 24/7, potentially reaching parents who might not otherwise engage with healthcare professionals about their hesitations.

**The Real Question**: The question isn't whether AI is magic — it's whether we can build tools that help people engage more thoughtfully with health decisions. Based on these results, the answer seems to be "yes, but it's not going to be a silver bullet."

## There are obvious avenues for further research

I considered including a third arm in this experiment that would have shown parents neutral educational materials about topics like sleep and nutrition. I decided against it in the end, to increase my power to detect a difference between the standard and chat arms. I'd plan to include this kind of control in future experiments, to try to disentangle the effect of the actual content from the frame around it. 

My inclination would be to take what we learned here and do a larger trial of that kind of active control, vs. the standard materials, vs. Hotez-style visualizations (citation tk), vs. perhaps an improved AI experience. This kind of persuasion *does* seem to work to some degree; I'd like to get more signal on what exactly works best at shaping *intentions*. 

And then I'd like to test the best performing interventions in a cluster-randomized trial across a bunch of pediatric clinics, to see if we can have an impact on actual vaccination rates. 

*If you're working on similar problems in health decision-making, have thoughts about building tools that help patients make better choices, or want to help fund this line of research, I'd love to hear from you. You can reach me at [your contact info].* 

## The Complete Analysis

For those interested in the full statistical analysis, including all preregistered tests, robustness checks, and exploratory analyses, you can [view the complete analysis here](TK).

The preregistration is [available on OSF](https://osf.io/7upk5), and I'll be making the anonymized dataset available for replication once I've finished writing this up for journal submission.