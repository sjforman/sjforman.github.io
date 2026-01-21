---
title: "Why I'm building AI tools for the most frustrating conversations in medicine"
date: 2026-01-13
draft: true
tags: ["calypta", "vaccines", "health", "llm"]
---

Personal update: I'm starting a company called [Calypta Health](https://www.calyptahealth.com), building tools to help people make wiser decisions about their health. I'm starting on hard mode with vaccine hesitancy. 

<!--more-->

# This is somewhat personal

I haven't told this story publicly before. In 2017, I went in for an annual physical with a [One Medical](https://www.onemedical.com/) provider. We covered some run-of-the-mill health topics, she ordered the usual labs, and as I was about to leave — literally, on the way out the door {{< ref "1" >}} — I asked, "hey, by the way, I have this bump, want to take a look?" It was a painless knob-like structure in my left glute. She asked a few questions, how long had it been there, etc., then palpated the thing, and said, ominously "hmph."

A week later, I was paying cash for an MRI at an imaging center{{< ref "2" >}}, and a few weeks after that I was taking a very long train ride down to LA for a biopsy at [City of Hope](https://www.cityofhope.org/). I took the scenic route to give myself time to think. It's a place I know well. [My dad is a hematologist / oncologist there](https://www.cityofhope.org/patients/find-a-doctor/stephen-forman), he helped start their Bone Marrow Transplant program, and is still [seeing patients and doing research](https://www.youtube.com/watch?v=z8WGtTPgQUU). I attended many BMT reunions growing up. I didn't expect I'd be back as a patient in my thirties.

A few days after the biopsy, I got a call from the surgeon: cancer. I remember this conversation only vaguely, because the experience is really quite terrifying. One takes in the information — just words, radio waves turned into sound waves and piped into your ear — and the whole apparatus of primal terror, the flood of cortisol and adrenaline, gets activated. Mortal terror is quite a trip.    

What I had, specifically, is a sarcoma — a soft-tissue cancer. A "myxoid liposarcoma with round cells," a moderate-to-highly aggressive type, characterized by a chromosomal translocation in which parts of chromosomes 12 and 16 swap places. What causes this? Nobody knows for sure. A stray cosmic ray strike during cell division sometime in 2015, maybe. A random copying error. The universe rolling dice. 

Because sarcomas can grow for a while without causing obvious symptoms, many are caught late. I was lucky. Mine was shallow enough to notice, I was in the habit of annual exams, and I (just barely) thought to mention it. I was also fortunate to have family expertise and to be in the care of sarcoma specialists from the beginning. (This matters — sarcoma needs careful handling even at the biopsy stage, so seek out specialists early if it's suspected.) I had insurance through the ACA, since I was working on a startup at the time. 

So off I went into Cancer World. Diagnostic workup to check for metastasis (fortunately none — maybe not widely known, but there's still a stark dividing line between "local" and "metastatic" cancers; the latter can be managed but rarely cured). Radiation therapy. Surgery. Then second and third surgeries to get the wound to close — irradiated tissue is vexing for wound healing.   

And all of this was a near miss. If I hadn't been doing annual PCP visits. If I hadn't remembered to ask about the thing. If my PCP hadn't raised an eyebrow at it.

So I got lucky. I can easily imagine alternate universes where my cancer was caught much later, maybe too late to be fully remediated. 

All to say: I'm alive now because I had access to a medical system with extraordinary technical capabilities. But to benefit from those capabilities, *I had to be an active participant*. If I'd been less savvy, or if a few dice had fallen differently, I might not have been.

What does this have to do with vaccines? The experience made me care about health decisions viscerally. I survived because I engaged with the system. And now I'm watching millions of people *disengage* from it — refusing vaccines, skipping screenings, ignoring medications — in ways that will hurt them and their children. That's what I want to work on.

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

{{< footnote "1" >}}
Doctors call these "doorknob questions."
{{< /footnote >}}

{{< footnote "2" >}}
My insurer at the time was dragging their feet on approving the MRI. I had a high deductible plan anyway, so I called around to see if I could just pay out of pocket, and discovered, not for the first time, that (a) it's very hard to get anyone to tell you in advance how much something is going to cost, in this world, but also (b) if you push, you often *can* just pay cash, and you'll be shocked by how much less it costs vs. what your insurer would pay even at whatever their in-network negotiated price is. The whole system is a terrible mess, and the root of much of our pathology is paying for stuff through "insurance" at all.
{{< /footnote >}}
