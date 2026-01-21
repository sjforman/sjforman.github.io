---
title: "Why I'm building AI tools for the most frustrating conversations in medicine"
date: 2026-01-13
draft: true
tags: ["calypta", "vaccines", "health", "llm"]
---

Personal update: I'm starting a company called [Calypta Health](https://www.calyptahealth.com), building tools to help people make wiser decisions about their health. We're starting on hard mode with vaccine hesitancy. 

<!--more-->

# This is somewhat personal

I haven't told this story publicly before. In 2017, I went in for an annual physical with a [One Medical]() provider. We covered some run-of-the-mill health topics, she ordered the usual labs, and as I was about to leave — literally, on the way out the door — (I later learned that doctors have a name for this — "doorknob questions.")<- make into footnote — I asked, "hey, by the way, I have this bump, want to take a look?" She asked a few questions, how long had it been there, etc., then palpated the thing — a painless knob-like structure in my left glute — and said, "huh." An ominous "huh." 

A week later, I was paying cash for an MRI at an imaging center, and a few weeks after that I was taking a very long train ride (decided to take the scenic route and give myself some time to think) down to LA for a biopsy at the [City of Hope](). It's a place I know well, having attended many Bone Marrow Transplant reunions there growing up (my Dad is an oncologist and helped start the BMT program there. He's still seeing patients and doing research). 

A week later, I got a call from the surgeon: cancer! People are diagnosed with cancer every day. It's routine. But it's really not possible to convey in words just how terrifying the experience is. It's amazing in a way. You're taking in some information — just words, radio waves turned into sound waves and piped into your ear, and the whole apparatus of primal terror, the flood of cortisol and adrenaline, gets activated. Mortal terror is quite a trip.    

What I had, specifically, is a sarcoma, a type of soft-tissue cancer. A "myxoid liposarcoma with round cells," a moderate-to-highly aggressive type, characterized by a chromosomal translocation in which [x]. 

Because they can grow for a while without causing any obvious symptoms, many sarcomas are caught late. So I was pretty lucky. Mine was shallow enough that it could be noticed, I was in the habit of getting annual exams, and I (just barely) thought to mention it. Then I was fortunate to have family expertise, and to be in the care of sarcoma specialists from the beginning. (this is important, by the way! Sarcoma needs to be handled very carefully, even at the biopsy stage, so it's wise to seek out oncologists who specialize in this as early as possible when sarcoma is suspected). I also had insurance through the ACA (I was working on a startup at the time, so I didn't have normal employer-sponsored health insurance). 

So off I went into Cancer World. The diagnostic workup to see if there was any metastasis (fortunately none: maybe not widely known, but even as much progress as we've made with cancer in the last decades, there's still a start dividing line between "local" and "metastatic" cancers — the latter can be managed but rarely if ever cured). Radiation therapy, surgery, then second and third surgeries to try to get the wound to close (irradiated tissue is vexing for wound healing).   

And all of this was a near miss. If I hadn't been doing annual PCP visits. If I hadn't remembered to ask about the thing. If my PCP hadn't raised an eyebrow at it.

So I got lucky. I can easily imagine alternate universes where my cancer was caught much later, maybe too late to be fully remediated. 

All to say: I'm alive now because I'm lucky enough to have access to a medical system with extraordinary technical capabilities. But to avail myself of those capabilities, *I had to be an active participant*, and if I were less savvy about such things, or if some dice had fallen in a slightly different configuration, I might not have. 

What does this have to do with my new project? Well the whole experience made me care about health decisions in a pretty visceral. People make choices every day — sometimes because they don't know the facts, sometimes because they know but don't believe, sometimes because they believe but can't act.

# The moment we're in is maddening

We now have a lifelong anti-vaxxer running HHS. Seven vaccines just got removed from the routine childhood schedule and dumped into "shared clinical decision-making." Except there's no infrastructure for those decisions to actually happen. "Discuss with your doctor" only works if that conversation takes place, and clinicians don't have hours to spend on each hesitant parent.

Meanwhile epistemics are rotting. People are making decisions based on fear and misinformation that will hurt them and their children. It's maddening to watch, and I don't want to just watch.

# The tools to actually help now exist

I've been using AI for my own health decisions for a couple years. It's remarkable: encyclopedic knowledge, infinite patience, no ego, available at 2am when you're anxious about something. But only if you use it judiciously — the raw chatbots can mislead as easily as they can inform.

What's missing is structure. Curated experiences that guide people through the evidence. Conversations that address their specific concerns without judgment. And eventually, closing the loop with clinicians so the insight doesn't stay locked in a private chat.

Here's the thing: doctors and patients are already using AI for health, but not in any integrated way. I think there's an interesting "shape of our systems" opportunity here — building the connective tissue between what patients discover privately and what clinicians see.

# I tested this, and it works

I didn't just hypothesize. Last year I ran two preregistered RCTs with vaccine-hesitant parents. The [first](/posts/llms-for-mmr-persuasion-rct-1) was encouraging but inconclusive. The [second](/posts/llms-for-mmr-persuasion-rct-2) was clearer: parents who got our intervention increased their MMR vaccination intent by more than a full point on a 7-point scale vs. control. Nearly two-thirds moved at least one point. The effect held for days.

That's an unusually large effect for a brief informational intervention. And I chose one of the hardest cases on purpose.

# This is what I do

I've spent my career on large-scale behavior change.

At [Opower](https://opower.com) I helped build software that's saved more than 41 terawatt-hours of energy to date. The insight was simple: give people clear, personalized information about their own behavior, and many of them will change it.

I founded [Vote Forward](https://votefwd.org), which has organized volunteers to send more than 40 million handwritten letters to their fellow citizens. We ran dozens of RCTs to figure out what actually moves people to vote.

Same playbook, new domain. Test rigorously, iterate fast, deploy at scale. The stakes are higher than energy bills or voter turnout, but the mechanics are similar — find moments where a little friction reduction or clarity can shift behavior, build systems to deliver at scale, measure obsessively.

# Yes, the incentives are mostly broken

Healthcare incentives are a disaster, and yes, I know that. But they're like 95% broken, not 100%, and I'm not yet cynical enough to believe there aren't clinicians and practices and systems and payers who will adopt tools that actually work, if they're built thoughtfully and shown to help. And even if the incentive structures are currently messed up, we're going to have to build new mechanisms to align them — the trajectory of health spending makes that inevitable. Better to be building the tools now.

# Who this is for

The product is live at [app.calyptahealth.com](https://app.calyptahealth.com). You can try it yourself.

**If you're a clinician** who spends too much time on difficult conversations about vaccines, screenings, or medications — conversations that drain you and rarely go well — this might help.

**If you work at a health system, payer, or public health department** and you're on the hook for preventive care metrics that won't budge, this might be worth a look.

**If you're reading this thinking "I wish this existed for X"** — reach out. Vaccines are where I started, but I've also been talking to OBs about prenatal counseling and GI docs about colonoscopy prep anxiety. The pattern generalizes: any conversation where the evidence is clear but patients resist or delay, and clinicians don't have time to work through it.

[scott@calyptahealth.com](mailto:scott@calyptahealth.com)
