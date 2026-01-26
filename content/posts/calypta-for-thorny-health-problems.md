---
title: "Calypta Health: bringing wisdom and patience to thorny health problems"
date: 2026-01-23
draft: true
featured: true
tags: ["calypta", "vaccines", "health", "llm"]
---

I'm starting a company called [Calypta Health](https://www.calyptahealth.com) to help people navigate the most contentious and confusing health decisions we face. The mission: lower medical spending, ease provider stress and burnout, improve population health.

<!--more-->

# This is personal

I've [written](/posts/don-from-reno) about my unexpected personal adventures with our medical system. My cancer was caught early because I was actively choosing preventive care — having annual physicals, asking questions. And I had access to excellent care and expert advice from my own family. I might not have made the self-protective choices that produced my favorable outcome. I got lucky. But there are now tools that can make luck less of a factor.

# Large-scale behavior change is what I do

At [Opower](https://opower.com) I helped build software that's saved more than 41 terawatt-hours of energy to date. The insight was simple: give people clear, personalized information about their own behavior and how it compares to the norm, and many of them will change it.

More recently, I founded [Vote Forward](https://votefwd.org), which has organized volunteers to send more than 40 million handwritten letters to their fellow citizens. We ran dozens of RCTs to figure out what actually moves people to vote.

Now I'm applying that playbook to health: finding moments where a little clarity can shift behavior, building systems to deliver it at scale, and rigorously measuring impact.

# Our health information landscape looks bleak

We now have a lifelong anti-vaxxer running HHS, methodically undermining trust in vaccines — one of the most miraculous achievements in human history. HHS recently removed seven childhood vaccines from the recommended schedule, moving them to the category of "shared clinical decision making."

"Shared clinical decision making" sounds reasonable enough. But our public health authorities are actively undermining confidence in vaccination, muddying the waters for those shared decisions. And most clinicians don't have time for these conversations in a 15-minute appointment.

The stakes are high. [Epidemiologists have modeled](https://doi.org/10.1001/jama.2025.6495) what happens if vaccination continues to decline, and the picture is dismal. Measles becomes endemic again. A further 50% drop over 25 years would yield roughly 51 million measles cases, 10 million rubella cases, 4 million polio cases, more than 10 million hospitalizations, and 160,000 deaths. Because these diseases are so contagious, the effects of declining vaccination are highly non-linear. Even a 10% drop translates into millions of additional cases and thousands of preventable deaths.

There's a similar epistemic crisis brewing across other health topics. We have grifters claiming that statins are pointless, that ASCVD can be cured by buying their supplements, and that ivermectin is a miracle cancer treatment. None of this is new, but it's all getting worse, and it's alarming to see so many making decisions based on fear and misinformation.

# Unwise health choices cost us dearly

This is one place where the "MAHA" impulse deserves some credit: bad choices *really do* sacrifice health and well-being, not to mention oceans of cash. Consider just a few behavior-driven gaps: 28 million adults eligible for statins but not taking them. 28 million age-eligible adults who have never been screened for colorectal cancer. 90 million adults with uncontrolled hypertension. More than 100 million obese adults, most of whom aren't receiving effective pharmacotherapy. These gaps represent roughly 100 million lost quality-adjusted life years and $1.5 trillion per year in total economic burden in the U.S. alone. The scale of harm is so great that even small behavioral shifts would be enormously valuable.

# Powerful LLMs can help in some surprising ways

The epistemic landscape is splintering into disjoint realities. But LLMs, as [Dylan Matthews recently pointed out](https://substack.com/home/post/p-184342590), are *converging* media technology. There's a line that "reality has a well-known liberal bias." That framing was always too smug, but there's something to the underlying idea for LLMs. They have a bias for the truth, and they are increasingly well-calibrated to resist extremist nonsense. They're not infallible, of course! I don't trust them to make fine-grained truth claims on subjects where there's substantial human disagreement. But on the big questions, they reliably point in the right direction.

They have other virtues too. They're infinitely patient and non-judgmental. They have encyclopedic knowledge baked into their weights and powerful search abilities to augment it. They speak every human language, at any reading level. This is why the major labs are building health products, and clinicians are already making extensive use of these tools. 

So far, though, there's something structurally missing. Patients and clinicians are mostly using these tools in isolation. There's no connective tissue; it's ad hoc. What I'm building: *curated* experiences that can be *prescribed* for specific situations, that guide people through the evidence, address their specific concerns without judgment, and then close the loop with the clinician.

Here's how it works in practice: a clinician sends a patient a link before or after any appointment where a contentious or time-consuming topic is on the agenda. The patient reviews curated content about the decision. For vaccines, that includes clear explanations of the risks of the diseases, without pulling any punches.[^DIS] Then they have an open-ended conversation with a frontier LLM about their specific concerns — non-judgmental, unhurried, empathetic. With EHR integration, clinicians get a short briefing on what was discussed.

The result for clinicians: patients arrive more informed. Lengthy, stressful, contentious conversations are avoided. Visits are more productive.

[^DIS]: This part serves as a "Disease Information Sheet." We have VIS, which does mention the diseases. But VIS is primarily a legal document designed for consent — it's not trying to convey *just how bad the diseases being prevented really were* (or...increasingly and alarmingly *are*). We have the *consent* without ever doing the *informed* part, except via heroic clinicians going above-and-beyond.

# I tested this on one of the most challenging topics

Last year I ran [an experiment](/posts/llms-for-mmr-persuasion-rct-2) with vaccine-hesitant parents. Those who reviewed carefully designed content and then chatted with an LLM increased their MMR vaccination intent by more than a full point on a 7-point scale versus control. Nearly two-thirds moved at least one point, and the effect persisted for several days.

That's an unusually large effect for a brief informational intervention.

The chat transcripts were illuminating. In several cases, correcting a single misconception was enough: "I am more likely to allow my child to receive vaccination knowing it doesn't contain aluminum." In others, providing an actionable plan helped: "I think a preparation plan makes me more eased up." Parents with well-grounded medical concerns (seizure history, anaphylaxis) revealed context that would help a pediatrician prepare for a complicated conversation.

# The incentives are mostly broken

In the American system, few actors have strong incentives to improve health behaviors at scale. But the incentives aren't *completely* broken. Medicare Advantage plans need to hit Stars metrics. Integrated systems and self-insured employers benefit when their people stay healthy. New models like [Crowdhealth](https://www.crowdhealth.com) are emerging, where each member has a financial interest in the health of every other member.

# Interested?

I have a beta system live at [app.calyptahealth.com](https://app.calyptahealth.com). You can try it yourself — signup takes a minute.

These conversations are about to get harder, not easier. Patients are more confused than ever, and public health messaging is actively making it worse. This is the right time to try new tools.

**If you're a clinician** who spends too much time on difficult conversations about vaccines, screenings, or medications...

**If you work at a health system, payer, or public health department** and you're on the hook for preventive care metrics that you struggle to move...

**If you're a researcher** who studies health communication, vaccine hesitancy, or behavior change...

**If you run a preventive care advocacy organization** and want better tools for reaching your audience...

**If you're reading this thinking "I wish this existed for statins" or "for GLP-1s" or "for blood pressure"**...

...I'd love to talk. I'm starting with vaccines and CRC screening, but the pattern generalizes to any conversation where the evidence is clear but patients resist or delay. Send me a note: [scott@calyptahealth.com](mailto:scott@calyptahealth.com).