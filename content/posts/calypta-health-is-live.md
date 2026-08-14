---
title: "Calypta Health: evidence and empathy for important health decisions"
date: 2026-08-14
draft: false
featured: true
tags: ["calypta", "vaccines", "health", "llm"]
summary: "In an environment of increasing fear and doubt and collapsing trust in health authorities, we need new tools to help people make wise choices. Calypta is available today, starting with MMR, HPV, shingles, colorectal cancer screening, cholesterol, and GLP-1s."
images: ["https://calyptahealth.com/og-default.png"]
aliases: ["/posts/calypta-patience-empathy/"]
---

Earlier this week in the Oval Office, the President signed an executive order about vaccines. Among other things, it calls for the MMR vaccine to be split into monovalent versions. There is absolutely no reason to do this. It can't happen quickly, and even if it could, it would be a stupid and wasteful change.[^japan]

[^japan]: Japan did this! It dropped combined MMR in 1993 because the mumps component, a strain not used in the US, was causing aseptic meningitis. But mumps never made it back into the routine schedule, and now thirty years later Japan still suffers periodic mumps outbreaks.

The good news is that it's not actually going to happen. The bad news is that calling for it in this way, accompanied by a blizzard of anti-vaccine propaganda (no, infants are not getting ["72 jabs"](https://www.cbsnews.com/news/trump-childhood-vaccines-executive-order/)), will further exacerbate misguided vaccine skepticism. It will also sow confusion among the broader public, who may not be sold on the more lurid anti-vax conspiracy-thinking, but *are* absorbing the atmosphere of fear and doubt.

Vaccines are among the greatest achievements in human history. We eradicated smallpox, we beat polio, and we made measles exceedingly rare. And now we're slowly surrendering. If current trends hold, measles will become endemic in the US again. [One model](https://doi.org/10.1001/jama.2025.6495) projects roughly 51 million cases of measles over 25 years, along with 10 million rubella cases, 4 million polio cases, and 160,000 deaths. Even a 10% further drop in vaccination will translate into millions of additional cases. It is deeply upsetting and incredibly dangerous.

Many factors have contributed to the atmosphere of suspicion and the decline in vaccination rates. Outright fraud, like Andrew Wakefield's work, is a big part of it. But the public health establishment has not covered itself in glory this decade either. I suspect, for example, that many COVID vaccine mandates were misguided, and that even had they been warranted, they would fail a cost-benefit calculus that accounted for the long-term damage they did to public confidence in vaccines generally.

In this environment of fear and doubt, parents are being asked to make decisions about vaccines in consultation with a clinician they see for 15 minutes and who has five other topics to cover in that visit.[^time] And they never get a full and unflinching briefing on what the prevented diseases are *actually like*. They get a federally mandated Vaccine Information Statement, a legal document designed for consent, but one that doesn't even try to convey how bad the diseases are. We have consent, but in a deeper sense we're missing the *informed* part.

[^time]: This is not the fault of clinicians. According to one study, delivering all guideline-recommended care to a standard primary-care panel [would require 26.7 hours per day](https://doi.org/10.1007/s11606-022-07707-x). The preventive care alone would take 14.1 hours.

The health information miasma is not confined to the vaccine sphere. There's a cottage industry of grifters claiming statins are poison and that ivermectin cures cancer. Meanwhile most American adults who would benefit from statins aren't taking them, tens of millions are overdue for colorectal cancer screening, and 90 million are walking around with uncontrolled hypertension. The aggregate costs, in lost years of life and in dollars, are staggering.

And while many of its specific prescriptions are bogus, the "MAHA" impulse deserves some credit: people making bad choices *really do* cause immense unnecessary damage to their health and well-being.

In brief, we have an increasingly contested discourse polluted by self-interested grifting; plummeting trust in authority; and busy clinicians who don't have enough time to help people make these decisions.

So I've been building something in response to this cluster of problems.

At Calypta Health, I'm using LLMs to help people think through health decisions where the evidence is clear but people resist or delay anyway. These are the conversations that don't fit in most clinic visits, even when clinicians wish they could have them. Of course, people are already conversing with LLMs about health topics. What Calypta adds is curation and guardrails: meticulously constructed educational materials coupled with LLM conversations that take people's concerns seriously, without judgment.[^pubpriv] Some are freely available to the public now. Others are for clinicians to share directly with patients, including as physical cards that can be handed out in person.

[^pubpriv]: The guides linked in this post are the public ones: open to anyone, funded by community contributions. Private guides work the same way but are sponsored by a practice or organization for its own patients. In this mode, context can be fed back to the clinician to help inform their own conversations.

LLMs are surprisingly well suited to this task. They're endlessly patient, they speak every language and can adapt to different levels of literacy. On topics where there is broad and well-supported human consensus, they are excellent at conveying the nature of that consensus. As [Dylan Matthews recently pointed out](https://dylanmatthews.substack.com/p/pro-social-media), they are a *converging* media technology.

They're not infallible, of course. I don't trust them to make fine-grained truth claims on subjects where there's substantial human disagreement. But on big questions with broad consensus, they reliably point in the right direction. And they don't inherently carry the tribal coding that leads some to tune out doctors and public health authorities.

I have reason to believe this can work. Last year I ran a preregistered RCT with MMR-hesitant parents. Participants who went through the experience [increased their vaccination intent by more than a full point on a 7-point scale relative to control](https://osf.io/preprints/psyarxiv/5kteh_v1), nearly two-thirds of them moved at least one point, and the effect persisted for several days. For a brief informational intervention, this is an unusually large effect.

The chat transcripts were illuminating. In several cases, correcting a single misconception was enough: "I am more likely to allow my child to receive vaccination knowing it doesn't contain aluminum." In others, providing an actionable plan helped: "I think a preparation plan makes me more eased up." Parents with well-grounded medical concerns (seizure history, anaphylaxis) revealed context that would help a pediatrician prepare for a complicated conversation.

Meanwhile, external evidence has been accumulating. In head-to-head experiments this year (UK AI Security Institute and Oxford), frontier AI systems out-persuaded every class of expert human tested, including world-champion debaters who chose their own topics, and raised roughly [3x more real-money charitable donations than professional fundraisers](https://arxiv.org/abs/2606.16475). These systems clearly have the raw capability to change minds. Calypta is betting that this capability can be bent to positive and health-promoting purposes.

Six guides are available now. They're free to use, with no signup required, because the people who most need this kind of support deserve easy access to it. But they aren't free to build or serve, so each one starts with a prepaid pool of conversations, and when the pool runs low, anyone can top it up. You could sponsor some conversations now, if you're so inclined. Here are the six:

* [MMR primary series](https://app.calyptahealth.com/pub/flows/mmr-primary-series) ([sponsor](https://app.calyptahealth.com/contribute/mmr-primary-series))
* [HPV vaccination](https://app.calyptahealth.com/pub/flows/hpv-vaccination) ([sponsor](https://app.calyptahealth.com/contribute/hpv-vaccination))
* [Shingles vaccination](https://app.calyptahealth.com/pub/flows/shingles-vaccination) ([sponsor](https://app.calyptahealth.com/contribute/shingles-vaccination))
* [Colorectal cancer screening](https://app.calyptahealth.com/pub/flows/crc-screening) ([sponsor](https://app.calyptahealth.com/contribute/crc-screening))
* [Cholesterol and heart disease](https://app.calyptahealth.com/pub/flows/cholesterol-prevention) ([sponsor](https://app.calyptahealth.com/contribute/cholesterol-prevention))
* [GLP-1 medications for weight loss](https://app.calyptahealth.com/pub/flows/glp1-initiation) ([sponsor](https://app.calyptahealth.com/contribute/glp1-initiation))

More coming soon: the vitamin K shot at birth, adult flu vaccination, lung cancer screening, and others. If there's a decision you wish existed as a guide, whether it's for yourself, someone in your life, or your patients, please let me know.

If you know someone who would benefit from one of these, feel free to send them a link. And if you're a clinician and would like to make this available to your patients, you can reach me at [scott@calyptahealth.com](mailto:scott@calyptahealth.com).
