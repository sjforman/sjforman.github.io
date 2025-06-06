---
title: "Can LLMs persuade people to vaccinate their kids?"
date: 2025-06-05
tags: ["vaccines", "llm"]
draft: true
---

I've been watching our ongoing measles outbreak in Texas with growing horror. I've also noticed researchers publishing a number of promising studies showing LLMs can be quite effective at changing people's minds, including by reducing their credence in conspiracy theories. The LLMs are probably going to be used for all kinds of nefarious persuasion efforts, but this situation got me wondering: can they also be used to protect people, by helping them to make wise choices about vaccination for their children? I've spent the last couple months trying to find out, and my preliminary answer is...maybe.

<!--more-->

## Why This Matters

Measles is a fucking nightmare, but it's one that we have basically *solved*. The vaccine works, and the objections people have to it are *entirely* spurious. There are any number of areas where a concerted effort to use AI to persuade people might feel justifiable, but on close inspection, there are often ambiguities and reasons to hesitate. But this is a case where I personally feel as confident about the truth as I do about anything, and where it matters enormously.

It's also a case where the negative externalities of misinformation are maximal. When people decline to vaccinate their children, they are endangering their children, but they're also endangering EVERYONE ELSE — babies who aren't old enough to be fully vaccinated yet, immunocompromised people. As [Hotez et al](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8590168/) point out in their recent paper, if vaccination rates continue to fall, we're looking at MILLIONS of cases in the coming decades. 

And they're ALL 100% unnecessary. It's maddening. So it seems to me that the case for using AI to push in the other direction is stronger than just about anywhere else.

There are also good reasons to think it might work. [Bergeron et al.](https://www.nature.com/articles/s41586-024-07982-w) showed that brief conversations with GPT-4 Turbo reduced belief in conspiracy theories by about 20% on average, with effects persisting for at least two months. [Costello et al.](https://www.science.org/doi/10.1126/science.adq1592) demonstrated that AI-generated counter-arguments could effectively reduce agreement with political misinformation. These studies suggest that conversational AI might be particularly well-suited to addressing vaccine hesitancy.

But here's the thing — I'm not just interested in this as an academic exercise. I'm exploring whether this could be the foundation of a viable business that helps patients make better health decisions. The goal isn't to deploy AI for its own sake, but to create tools that genuinely improve health outcomes at scale.

## The Experiment Design

Because the social sciences are littered with splashy p-hacked findings and file-drawer nulls, I preregistered my experiment with OSF: [Leveraging Conversational AI to Reduce MMR Vaccine Hesitancy: A Two‑Arm Online Experiment](https://osf.io/7upk5). 

The basic setup was straightforward but carefully designed:

**Participants**: I recruited 216 U.S. parents of children born in 2019 or later through Prolific. These weren't random parents — they had to have indicated some level of vaccine hesitancy on Prolific's screening questions, and then score less than 7 on our primary outcome measure during a pre-screening phase.

**The Key Question**: "If you had to make a decision about the MMR (measles, mumps, and rubella) vaccine for your child tomorrow, how likely would you be to choose vaccination?" (1-7 scale: "Certain not to" to "Definitely would")

**Randomization**: Participants were randomly assigned using stratified minimization within intention score brackets to ensure balanced groups. The system I built logged every randomization decision for full transparency.

**Two Arms**:
1. **Standard Educational Materials (SEM)**: Participants reviewed 5 panels of CDC-style educational content, with a minimum 30-second exposure per panel (150 seconds total)
2. **Interactive Conversation Tool (ICT)**: Structured conversation with Claude 4.0, with minimum engagement requirements (at least 3 turns of dialogue, plus a chat engagement score threshold)

The conversation tool wasn't just ChatGPT in a wrapper. I spent considerable time on prompt engineering to create a system that would:
- Address specific concerns participants had flagged in their pre-survey
- Use motivational interviewing techniques to avoid triggering reactance
- Provide evidence-based information without being preachy
- Engage empathetically with parental concerns

**Additional Measures**: Beyond the primary intention outcome, I collected data on specific vaccine concerns (safety, effectiveness, ingredients, etc.), trust in healthcare providers, political ideology, and engagement metrics. For the ICT arm, I tracked conversation length, number of turns, and characters typed. I also included a behavioral proxy measure — whether participants clicked through to vaccines.gov after the intervention.

## The Main Hypothesis

Based on the Costello and Bergeron studies, I hypothesized that the Interactive Conversation Tool would lead to a greater increase in vaccination intention compared to standard educational materials. The reasoning was that personalized, conversational engagement would be more persuasive than static content.

I also had secondary hypotheses about engagement predicting intention change, and exploratory hypotheses about potential moderators (baseline concerns, political ideology, trust in providers).

## What I Actually Found

But that is not what I found! 

The results were more nuanced than I expected. Both interventions increased vaccination intention significantly from baseline — which is actually encouraging news. But the difference between the AI conversation and standard materials was smaller and not statistically significant.

**The Primary Result**: While participants in the ICT condition showed a slightly larger increase in vaccination intention (Cohen's d ≈ 0.15), the 95% confidence interval included zero. So I can't claim the AI was meaningfully superior to well-designed educational materials.

**But Both Worked**: This might actually be the more important finding. In Set A (participants with initial scores ≤ 6), both conditions produced meaningful increases in vaccination intention. We're talking about real attitude change in a population that started out hesitant.

**Engagement Patterns**: One fascinating finding was that while time spent didn't predict attitude change much, the voluntary engagement patterns were striking. Some participants in the ICT condition engaged far beyond the minimum requirements, having extended conversations about their concerns. This suggests the conversational format might be inherently more engaging, even if not more persuasive per unit time.

## Why This Still Matters for Building Better Patient Tools

Even though I didn't find a slam-dunk superiority effect, these results point toward something interesting for patient decision support:

**Information Discovery**: The conversation logs revealed the specific concerns each participant had, creating a rich dataset of what actually worries vaccine-hesitant parents. In a clinical setting, this kind of tool could help providers understand and address individual patient concerns more effectively.

**Reduced Reactance**: While not statistically significant, there were hints that the conversational approach might reduce defensive reactions compared to direct persuasion. This aligns with motivational interviewing principles that are well-established in healthcare.

**Scalability**: Unlike one-on-one counseling with healthcare providers, an AI system could provide personalized responses to common concerns 24/7, potentially reaching parents who might not otherwise engage with healthcare professionals about their hesitations.

**The Real Question**: The question isn't whether AI is magic — it's whether we can build tools that help people engage more thoughtfully with health decisions. Based on these results, the answer seems to be "yes, but it's not going to be a silver bullet."

## Building a Business Around Better Decisions

This experiment was never just about academic publication. I'm exploring whether there's a viable business model around helping patients make better health decisions using AI-powered tools.

The vaccination use case is compelling because:
- The stakes are high (public health consequences)
- The evidence is clear (vaccines work, concerns are largely unfounded)
- Current approaches aren't reaching everyone who needs them
- There's potential for both B2B (healthcare systems) and B2C applications

But the broader vision is about decision support across healthcare. What if we could help patients:
- Better understand treatment options for chronic conditions
- Navigate complex screening decisions 
- Evaluate health information from various sources
- Engage more effectively with their healthcare providers

The key insight from this experiment is that the technology can work, but success will depend on implementation details, user experience, and integration with existing healthcare workflows.

## Next Steps and Lessons Learned

**What Worked**:
- Both interventions produced meaningful attitude change
- The experimental platform worked smoothly (important for scaling)
- Rich data collection provided insights beyond the primary outcome
- Preregistration prevented cherry-picking results

**What I'd Do Differently**:
- Test longer conversation formats
- Compare against active control conditions (not just static materials)  
- Include follow-up measures to assess persistence of attitude change
- Test integration with actual clinical workflows

**For the Business**:
This experiment validated that AI-powered patient engagement tools can influence health decision-making, but highlighted that the competitive advantage won't come from the AI itself — it'll come from user experience, clinical integration, and measurable health outcomes.

The goal remains building tools that help people make decisions they'll be glad they made. Vaccination is just the starting point.

## The Complete Analysis

For those interested in the full statistical analysis, including all preregistered tests, robustness checks, and exploratory analyses, you can [view the complete analysis here](analysis.html). Everything was conducted exactly as preregistered, with R code and results fully transparent.

The preregistration is [available on OSF](https://osf.io/7upk5), and I'll be making the (anonymized) dataset available for replication once I've finished writing this up for journal submission.

---

*If you're working on similar problems in health decision-making or have thoughts about building tools that help patients make better choices, I'd love to hear from you. You can reach me at [your contact info].*