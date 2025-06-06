---
title: "Can LLMs persuade people to vaccinate their kids?"
date: 2025-06-05
tags: ["vaccines", "llm"]
draft: true
---

I've been watching our ongoing measles outbreak in Texas with growing horror. I've also noticed researchers publishing a number of promising studies showing LLMs can be quite effective at changing people's minds, including by reducing their credence in conspiracy theories. The LLMs are probably going to be used for all kinds of nefarious persuasion efforts, but this situation got me wondering: can they also be used to protect people, by helping them to make wise choices about vaccination for their children? I've spent the last couple months trying to find out, and my preliminary answer is...maybe.

<!--more-->

## Why This?

Why work on this? Well, measles is a fucking nightmare, but it's one that we have basically *solved*. The vaccine works, and the objections people have to it are *entirely* spurious. There are any number of areas where a concerted effort to use AI to persuade people might feel justifiable, but on close inspection, there are often ambiguities and reasons to hesitate. But this is a case where I personally feel as confident about the truth as I do about anything, and where it matters enormously.

It's also a case where the negative externalities of misinformation are maximal. When people decline to vaccinate their children, they are endangering their children, but they're also endangering EVERYONE ELSE — babies who aren't old enough to be fully vaccinated yet, immunocompromised people. As Hotez et al point out in their recent paper, if vaccination rates continue to fall, we're looking at MILLIONS of cases in the coming decades. 

And they're ALL 100% unnecessary. It's maddening. So it seems to me that the case for using AI to push in the other direction is stronger than just about anywhere else. 

There are also good reasons to think it might work. Bergeron showed... And Costello and collaborators showed...

## The Experiment 

Because the social sciences are littered with splashy p-hacked findings and file-drawer nulls, I preregistered my experiment with OSF: [Leveraging Conversational AI to Reduce MMR Vaccine Hesitancy: A Two‑Arm Online Experiment](https://osf.io/7upk5). 

The basic idea was to recruit a couple hundred people with young kids and attempt to shift their attitudes about the MMR (measles, mumps, and rubella) vaccine. 

Participants were screened to have some hesitation on the question "If you were to make a decision tomorrow about whether or not to vaccinate, how likely would you be to do so?" On a scale of 1-7, the targets were people who answered something less than "7" (certain to vaccinate).

I randomized them into two groups. One would be asked to review CDC-style educational materials, and the other would have a structured conversation with an LLM (Claude 4.0) about the same topics. 

Participants assigned to the "Standard materials" arm were shown a series of 5 panels making the case for MMR vaccination; they were obliged to review each panel for a minimum of 30 seconds.

After the intervention, they were asked the same vaccination intention question again.

# The Main Hypothesis

Based on Costello and Bergeron, I was expecting to see that the LLM conversation would lead to a greater increase in vaccination intention than the standard educational materials.

# What I Found

But that is not what I found! It appears, instead, that BOTH arms of the experiment increased their vaccination intention significantly. The AI chat worked SLIGHTLY better, but statistically not meaningfully so. 

# There are some hints that the AI is superior

For one thing, if this were deployed at scale in a clinical setting, it would provide a great deal of information to the clinician about what concerns the patient has. 

For another, it appears to be slightly less likely to induce a negative reactive response, vs. the standard educational materials. Again, suggestive, but it makes sense: the LLM is deploying some motivational interviewing techniques that have been shown to be effective at forestalling backlash. 

And while the length of engagement with the chat in the ICT arm doesn't seem to have any relationship with change in intention, the fact that some people voluntarily chose to engage *quite a bit more than they were obliged to* by the mandatory engagement meter built into the experiment suggests that this kind of experience can be engaging in a way that static content is not. 

# What's Next