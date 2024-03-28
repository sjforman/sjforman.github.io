---
title: Maybe RSS is all we need
date: 2023-12-13
summary: My quixotic gesture at an alternative and healthier model for social media. Think of it as *anti*-social media.
---

{{< alert-banner >}}
Update: This was going to be somewhat costly to host on AWS, so I decided to take it down. If people want it to exist though, I might re-publish it! There's an interest form [here](https://forms.gle/akYT3Ew6xWnkKBGEA).
{{< /alert-banner >}}

In the navigation for this site there's a link to my ["Microblog"](/microblog). It leads to a feed that I publish through a [website I built](https://pubfeed.io). "Pubfeed" is my quixotic gesture at an alternative and healthier model for social media. I think of it as *anti*-social media.

## Why? Because The Platforms Are Poison

We all know that social media is toxic and poisonous. 

Carefully constructed empirical research like [Braghieri et al, "Social Media and Mental Health," 2022](https://www.aeaweb.org/articles?id=10.1257/aer.20211218) clearly demonstrates deleterious impacts on mental health.
:w

It seems that people are even willing to *pay* for everyone else to *stop* using social media.  ([Bursztyn et al, "When Products Become Collective Traps: The Case of Social Media," 2023](https://www.nber.org/papers/w31771)). 

The network effects are real, and terrible. We can't quit because our friends are on the apps, but we'd all be better off if we could.

## The Incentives Are The Problem 

It's also pretty clear *why* these systems are so toxic. It's because of the incentives. The companies that run the platforms sell our attention to their advertisers. And the best way to capture our attention is to stoke hot emotions like anger and fear. "If it bleeds, it leads" has always been the way. But now algorithmically supercharged.

## Frictionless Publishing is Good Though

There's nothing inherently wrong with "low-friction publishing of thoughts and ideas on the internet." A worldwide open publishing platform is a miracle!

But maybe we can jettison the bad parts and salvage the good. Maybe the *centralized platforms* aren't even necessary.

## RSS is All We Need  

My thesis: we can we get pretty far using just a reliable old friend, RSS. A Really Simple way to handle publication and subscription. I think RSS is all we need. Remember Google Reader? Like that! That was a better world. 

## My Gesture: Pubfeed

I don't want to be on Twitter or Facebook or Instagram or Tiktok anymore. All I want is an RSS feed to publish photos and stray thoughts and whatnot. 

So I took a stab at building a platform to make that as easy as possible. [Pubfeed](https://pubfeed.io)  makes it dead-simple to make your own feed and publish what you want.

I'd like it if all my friends and family and all the internet weirdos whose opinions I care about for some reason had open RSS feeds too. I'm not holding my breath of course — the platform network effects are strong. But I figure I might as well start somewhere and publish my own. 

## How it Works

When you sign up the app will make an RSS feed for you, and provide you some basic tools to manage it. You can add, edit, and delete entries, including with images.

Your stuff is hosted in an Amazon S3 bucket. Nothing proprietary. Just a plain text RSS (actually [Atom](https://www.ietf.org/rfc/rfc4287.txt)) feed plus any images you upload, served on the open internet. 

You can syndicate on a website of your own like I do. People can subscribe in the RSS reader of their choice. And if you want to host and manage it somewhere else, you're free to do so any time. 

I favor this approach partly for its simplicity and durability. Because even if you like whatever platform you're using — and I do, by the way, like Bluesky at the moment! — the platforms are contingent, fragile, insular, and short-lived. Plain text is forever.   

It's free for now, but not costless to operate, so if it gains any traction I'll probably add some modest subscription setup.

## How it Doesn't Work

There's no way to interact with other people's feeds. No likes, no comments, no reposts. To my mind this is a virtue. But it's probably *too* anti-social to be of much general interest. 

That said, if there turns out to be an appetite for this, I can see how to incorporate some modest interactive capabilities, even within the constraints of the Atom standard. 

A fully-featured buildout would include some of those carefully calibrated social features along with a modern reader, mobile apps, and some sort of index or aggregation or search system. Maybe someone else wants to help build all that. Let me know if so. 

## Tilting at Windmills

So yeah, this is my modest and probably hopeless gesture in the direction of healthier internet discourse. Feel free to give it a try. 