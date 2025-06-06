---
title: "How to solve the looming autonomous traffic apocalypse"
date: 2024-11-22
tags: ["urbanism", "self-driving"]
---

The autonomous vehicle revolution promises three enormous benefits: millions of avoided deaths and maimings, more productive uses for the vast amounts of land we currently devote to parking (and gas stations, auto repair shops, dealerships, etc.). And most obviously, much cheaper mobility, which is straightforwardly a good thing. 

So it can be transformatively great, but we really do have to mitigate the big downside — a huge increase in traffic and congestion. If driving gets an order of magnitude cheaper and easier, vehicle miles travelled will skyrocket, and we simply do not have enough space to accommodate that, especially in cities.

Demand for the roads will increase so much that the only answer will be dynamic road pricing. Of course, the roads are already a scarce resource and it is and has always been stupid and wasteful to ration their use by making people pay with their time in pointless soul-crushing traffic. It's not just inefficient, it's undignified. We are not meant to live like that! But implementing the obvious solution has never been politically viable. 

At the same time, road maintenance costs are going to increasingly eat entire budgets as the transition to electric vehicles erodes gas tax revenue, while vehicle embiggening causes all the roads to crumble faster.

So we really are going to have to price the roads. And we have a brief once-in-a-generation window to do this right, before entrenched interests make it politically impossible again.

But *how*? What would be a reasonable design for a road pricing scheme? I spent a morning thinking about it. Here's a sketch. 

I propose that we ground any scheme in three principles: 

1. Road use prices should be proportional to the costs and negative externalities imposed by that use.{{< ref "1" >}}
2. Unproductive road uses such as miles traveled by empty vehicles should be disincentivized.
3. Affordable mobility is good, so road pricing should raise enough revenue to cover road maintenance costs, and no more.

Here's a model showing how this might work: 

https://docs.google.com/spreadsheets/d/1Z-rUNuM-2btnbFKCyBHLf-g9lZAZuj7FCGstwh0pZ8A/edit?gid=1832033520#gid=1832033520

I start with a rough estimate of total road expenditures ($300 billion) and VMT (4 trillion) in 2030, which suggests a naive per-mile fee of 8 cents. But we want to scale this according to our principles. So imagine a fully occupied compact cay. Something like a Toyota Yaris weighs about a ton, takes up a footprint of about 100 square feet, and can transport 5 people. With current automotive technology, it takes about 400 pounds and 20 square feet of car to move people around at car speeds.

I take that as a base case and scale the price linearly up and down as the road-area-per-passenger component increases, and exponentially for the weight-per-passenger component.{{< ref "2" >}}

Then apply a surcharge for congestion. I think simplicity is a virtue, so I suggest just a flat doubling for congestion above a certain threshold. But in reality, we would want to set this empirically to whatever figure is necessary to prevent congestion from ever happening. Goodbye traffic, forever.

The effect would be to incentivize the development and use of smaller, lighter vehicles and maximum occupancy of large ones, while discouraging miles travelled by empty vehicles.{{< ref "3">}} 

As a last step, I made some wild guesses about 2030 travel under different scenarios, then adjusted the base case rate to achieve revenue neutrality. Tweaking the weight and size factors to produce what look to me like more-or-less reasonable outcomes, it looks to me like **we can fully fund our 2030 road costs with a fee regime in which a one person pod in free flowing traffic is charged 1 cent per mile.** A half empty Camry (2 out of 5 seats occupied) would be 13 cents per mile. An empty Cybertruck in heavy traffic would pay 65 cents per mile. 

This program should start as a pilot by an intrepid city or state, and I propose that it have a structure along these lines. But the specific figures don't much matter. The important thing is to get the structure in place quickly, because this revolution is going to happen faster than most people think. Who will lead the way? 

{{< footnote "1" >}}
Should carbon and particulate emissions be factored in as well? No. Because we're trying to set up a system for the long term, and electric vehicles are going to win anyway, faster than most people realize. And anyway, most *autonomous* vehicles are going to be electric from the outset.
{{< /footnote >}}

{{< footnote "2" >}}
But modestly, to preserve the benefits of reduced parking needs; we actually do want vehicles to vacate busy urban areas when they're not in use. 
{{< /footnote >}}

{{< footnote "3" >}}
 Scaling the weight penalty exponentially is in keeping with the [AASHO road test results](https://en.wikipedia.org/wiki/AASHO_Road_Test). In practice, using the fourth power law produces politically unworkable results; in my model, based on some trial-and-error to try to arrive at reasonable figures, I used a scaling factor of 1.2.
{{< /footnote >}}