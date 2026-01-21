---
title: "Why I'm building AI tools for the most frustrating conversations in medicine"
date: 2026-01-13
draft: true
featured: true
tags: ["calypta", "vaccines", "health", "llm"]
---

Personal update: I'm starting a company called [Calypta Health](https://www.calyptahealth.com), building tools to help people make wiser decisions about their health. Why? Because I learned firsthand as a patient that the way we engage, or don't, has life-and-death stakes. And because right now there are big new threats to sound decision making, and big opportunities to do better.

<!--more-->

# In my thirties, I had a near-miss brush with mortality

I haven't told this story publicly before. In 2017, I went in for an annual physical with a [One Medical](https://www.onemedical.com/) provider. We covered some run-of-the-mill health topics, she ordered the usual labs, and as I was about to leave — literally, on the way out the door [^doorknob] — I asked, "hey, by the way, I have this bump, want to take a look?" It was a painless knob-like structure in my left glute. She asked a few questions, how long had it been there, etc., then palpated the thing, and said, ominously "hmph."

A week later, I was paying cash for an MRI at an imaging center[^mri-cash], and a few weeks after that I was taking a very long train ride down to LA for a biopsy at [City of Hope](https://www.cityofhope.org/). I took the scenic route to give myself time to think. It's a place I know well. [My dad is a hematologist / oncologist there](https://www.cityofhope.org/patients/find-a-doctor/stephen-forman), he helped start their Bone Marrow Transplant program, and is still [seeing patients and doing research](https://www.youtube.com/watch?v=z8WGtTPgQUU). I attended many BMT reunions growing up. I didn't expect I'd be back as a patient in my thirties.

A few days after the biopsy, I got a call from the surgeon: cancer. I remember this conversation only vaguely[^don-reno], because the experience was really quite terrifying. Radio waves get turned into sound waves and piped into the ear, and somehow a whole apparatus of primal terror, a flood of cortisol and adrenaline, gets activated. Mortal terror is quite a trip.    

What I had, specifically, was a sarcoma — a soft-tissue cancer. A "myxoid liposarcoma with round cells," to be specific, a moderate-to-highly aggressive type, characterized by a chromosomal translocation in which parts of chromosomes 12 and 16 swap places. What causes this? Who knows. Maybe a stray cosmic ray strike during cell division sometime in 2015. Just a bad roll of the dice. 

Because sarcomas can grow for a while without causing obvious symptoms, many are caught late. I was lucky. Mine was shallow enough to notice, I was in the habit of annual exams, and I (barely) thought to mention it. I was also fortunate to have family expertise and to be in the care of sarcoma specialists from the beginning.[^sarcoma-specialists] I had insurance through the ACA, since I was working on a startup at the time. 

So off I went into Cancer World. A diagnostic workup to check for metastasis — fortunately none.[^metastasis] Radiation therapy. Surgery. Then second and third surgeries when the wound failed to close and heal. Irradiated tissue is vexing for wound healing.   

And all of this was a near miss. If I hadn't been doing annual PCP visits. If I hadn't remembered to ask about the thing. If my PCP hadn't raised an eyebrow at it.

So I got lucky. I can easily imagine alternate universes where my cancer was caught much later, maybe too late to be fully remediated. 

# Being an active, informed patient plausibly saved my life

I'm alive now because I had access to a medical system with extraordinary technical capabilities. But to benefit from those capabilities, *I had to be an active participant*. If I'd been less savvy or active I might be not be alive today.

# We face new and growing threats to sound health decision making

We now have a lifelong anti-vaxxer running HHS, methodically undermining trust in vaccines, one of the most miraculous achievements in human history. 

Just a few weeks ago seven childhood vaccines were removed from the recommended schedule, and moved to the category of "shared clinical decision making." Except there's no infrastructure for those decisions to actually happen. "Discuss with your doctor" only works if that conversation takes place, and clinicians already don't have enough time to spend with each hesitant parent.

People are making decisions based on fear and misinformation that will hurt them and their children. It's maddening, and I don't want to just watch.

# The tools to actually help now exist

I've been using AI for my own health decisions for a couple years. It's remarkable: encyclopedic knowledge, infinite patience, no ego, available at 2am when you're anxious about something. I feel confident that these tools would have been of great help to me during my cancer experience. But they do have to be used judiciously. Without a scaffolding of knowledge to understand and contextualize, it's easy to be misled.

What's missing is structure, some kind of connective tissue between clinicians and patient. So I'm building curated experiences that guide people through the evidence, conversations that address their specific concerns without judgment, and with scaffolding to close the loop with clinicians. 

Because patients are already using AI for health. Just in an ad hoc fashion. I think there's an interesting "shape of our systems" opportunity here, to build connective tissue between what patients discover privately and what clinicians see.

# I tested this on one of the most challenging topics, with promising results

Last year I built some tools and did some experiments with vaccine-hesitant parents. [The results are promising](/posts/llms-for-mmr-persuasion-rct-2): MMR-hesitant parents who got the intervention increased their MMR vaccination intent by more than a full point on a 7-point scale vs. control. Nearly two-thirds moved at least one point, and the effect seems to have persisted for several days.

That's an **unusually large effect for a brief informational intervention.** 

# Large-scale behavior change is what I do 

I've spent my career on large-scale behavior change. At [Opower](https://opower.com) I helped build software that's saved more than 41 terawatt-hours of energy to date. The insight was simple: give people clear, personalized information about their own behavior, and many of them will change it.

I founded [Vote Forward](https://votefwd.org), which has organized volunteers to send more than 40 million handwritten letters to their fellow citizens. We ran dozens of RCTs to figure out what actually moves people to vote.

Now I'm applying that playbook to this new domain, finding moments and niches where a little clarity can shift behavior, and building systems to deliver that at scale, while rigorously measuring impact.

# Yes, incentives are mostly quite broken

I'm well aware that in the American system, few actors have strong and clear incentives to try to change behavior at scale.

But I'm betting that the incentives are not *completely* broken. I'm wagering that there are actors who will adopt tools that actually work to shift behaviors in health- and cost-saving directions.

# Do you have an interest in shifting health behaviors?

I have a beta system live at [app.calyptahealth.com](https://app.calyptahealth.com). You can try it yourself.

**If you're a clinician** who spends too much time on difficult conversations about vaccines, screenings, or medications, conversations that drain you and rarely go well, this might help you both save time and nudge your patients towards healthier choices. 

**If you work at a health system, payer, or public health department** and you're on the hook for preventive care metrics that won't budge, this might be worth a look.

**If you're reading this thinking "I wish this existed for X"** — reach out. Vaccines are where I started, but I've also been talking to OBs about prenatal counseling and GI docs about colonoscopy prep. The pattern generalizes: any conversation where the evidence is clear but patients resist or delay, and clinicians don't have time to work through it.

Feel free to reach out! I'd love to speak with you. [scott@calyptahealth.com](mailto:scott@calyptahealth.com)

[^doorknob]: Doctors call these "doorknob questions."

[^mri-cash]: My insurer at the time was dragging their feet on approving the MRI. I had a high deductible plan anyway, so I called around to see if I could just pay out of pocket, and discovered, not for the first time, that (a) it's very hard to get anyone to tell you in advance how much something is going to cost, in this world, but also (b) if you push, you often *can* just pay cash, and you'll be shocked by how much less it costs vs. what your insurer would pay even at whatever their in-network negotiated price is. The whole system is a terrible mess, and the root of much of our pathology is paying for stuff through "insurance" at all.

[^sarcoma-specialists]: This matters — sarcoma needs careful handling even at the biopsy stage, so seek out specialists early if it's suspected.

[^metastasis]: Maybe not widely known, but there's a stark dividing line between "localized" and "metastatic" cancers. Localized cancers — those that haven't spread beyond their original site — typically have 5-year survival rates of 90% or higher. Once cancer metastasizes, those rates drop dramatically: to around 30% for breast cancer, 28% for prostate, 9% for lung. The latter can often be managed for years, but rarely cured. This is why early detection matters so much.

[^don-reno]: What I do remember is the initial voicemail Dr. Dom Femino left me being transcribed, "Hi Scott, it's Don from Reno."