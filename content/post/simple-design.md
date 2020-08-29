+++
title = "Simple Design"
featured = "simple-design-small.jpg"
categories = ["design"]
featuredalt = ""
date = "2018-03-21T08:37:49+01:00"
linktitle = ""
description = "Guidance for a better design"
author = ""
featuredpath = "https://magonye.github.io/img/"
+++
Several months ago, I wrote about some known design principles: SOLID, YAGNI, DRY, ..... (you can read the full post <a href="../../post/design-principles/" target="_blank">here</a>). I was looking to understand and follow these principles for a goal: to write better code. And when I talk about "better" code, I mean readable and maintainable code. Code that every developer in a company should be able to maintain in a future. No matter if I'm still in the company or not. 

I have to admit that some of the principles that I wrote about were tough to understand to me. And they were tougher to apply on my daily basis work. In fact, sometimes, when applying some of the SOLID principles in our code, it can look more unreadable and unmaintainable than before. What the hell!!! What was happening here?

It could be that design patterns are good, when they apply to a concrete scenario. So, I thought that it was needed some higher-level rules, not so specific, that I might apply, if not always, most of the times. The following post tries to explain some rules I started to follow in order to achieve that better design that we all are looking for.

## Rules of Simple Design

Design should be a constant in our work, an improvement process that make us to have a Better Design, instead of a Good Design. There is no formula for that Good Design.

In order to achieve this improvement, what has sense to me is to think in a Simple Design, easy to change, and that fits in what I think a Better Design should be.

For that purpose, Kent Beck created the **4 Rules of Simplicity**, and they became tremendous known when they appeared on <a href="https://www.goodreads.com/book/show/3735293-clean-code" target="_blank">Clean Code</a> book by <a href="https://twitter.com/unclebobmartin" target="_blank">Robert C. Martin</a>:

1. Passes all the tests.
2. Expresses every idea that we need to express.
3. Says everything one and only once.
4. Has no superfluous parts.

Looking for brevity, the following rules could work as well:

1. Tests pass
2. Express Intent
3. No duplication
4. Small

These are 4 statements or commands, presented as a workflow. These 4 rules combine each other with the following one and they should be iterated until we feel our code is clear and simple enough. 

## Values

Sometime after that, Kent Beck wrote a book called <a href="https://www.goodreads.com/book/show/781559.Implementation_Patterns" target="_blank">Implementation Patterns</a>, and he described the values that were behind his 4 rules. These values are consistent with excellence in programming. I'm trying to have them in mind when I write software:

### Communication

As <a href="https://www.goodreads.com/quotes/835238-indeed-the-ratio-of-time-spent-reading-versus-writing-is" target="_blank">Robert C. Martin said</a>, we spend more time reading code than writing new one. As a programmer, we should know that we are not only writing code to satisfy a feature. We are also writing code for the programmer that will change that code in the future (maybe ourselves, maybe another programmer).

For that reason, we need to communicate as much as possible, and we should also break some rules if, breaking that rules, the code communicates better. Who will care in the future if our code is clean code, if nobody understands it?

### Simplicity

In order to understand code, it should be simple. Simple solutions communicate better than complex and smart ones. We need to eliminate complexity of our code. Simplicity should help our code to communicate its purpose. The only reason to keep something more complex should be for the communication.

### Flexibility

Sometimes we write code that tries to satisfy a future feature. We try our software to be flexible to future changes, and sometimes these changes come, but sometimes they never come. That flexibility makes our code complex and hard to maintain.

Our code should be flexible to allow new changes to come, but not anticipating them. Postponing decisions to the last responsible moment, let you have more information to take into account. Sometimes, when we try to anticipate a feature, we don't have enough information yet. If we postpone the decision until the last possible moment, we have more chance to be successful.

## LEARNINGS

I have spent the majority of my professional career as a developer thinking that smart and complex solutions were better. I tried hard to understand code from colleagues that were hard to understand. And I though these developers were awesome and were creating better code than I was.
These times were time of cowboy coders, with no vision of team membership.

And at some point, in my professional career, I started to work in a team with strong sense of team, a team with a common and clear purpose. And the code didn't belong to me anymore, the code belonged to the team.

Having these values and applying these rules helps the team with its purpose: to create amazing new features, modify existing ones, but also allowing any member of the team to work on any part of our codebase. There is no magic, and problems on new feature are still there, but I think we are minimizing problems of readability and maintenance. Our solutions are now simpler than before, and for that reason, our codebase is more flexible and allow us to add new behavior with less effort.

## Inspiration

I would like to thank <a href="https://twitter.com/venkat_s" target="_blank">Dr. Venkat Subramaniam</a> and <a href="https://twitter.com/fran_reyes" target="_blank">Fran Reyes</a> for the inspiration.

I was attending the Barcelona Java Conference 2017, and the opening key note was "The Art of Simplicity", by <a href="https://twitter.com/venkat_s" target="_blank">Dr. Venkat Subramaniam</a>. You can see the full video <a href="https://www.youtube.com/watch?v=Z-8ZGgGadHU" target="_blank">here</a>.
The talk was very inspirational, about the art of making things simple. At the end of the talk, I had the feeling that the search of the simplicity, as itself, was a challenge, and it required a lot to practice, in order to be mastered.

Later on, at the Community of Practice that we are running at our work, we saw the video "Values and Principles in Software Design" by @fran_reyes. The talk was originally made at CAS2017, it's in Spanish, and you can see the full video <a href="https://www.youtube.com/watch?v=sXLCBcELu5Y" target="_blank">here</a>. This video talks about Kent Beck's values and principles, and examples and advices about how to apply them.

That's the tweet I made of that session:
{{< tweet 961634605576196096 >}}  

## KENT BECK

Everything on that post is about Kent Beck's work. He transformed the software development world. He is the creator of <a href="http://wiki.c2.com/?ExtremeProgramming" target="_blank">extreme programming</a>, one of the original signatories of the <a href="http://agilemanifesto.org/" target="_blank">Agile Manifesto</a>, and very related to the <a href="http://wiki.c2.com/?TestDrivenDevelopment" target="_blank">TDD</a> movement.

If you don't know him, I recommend you start looking for his work.
 
## More info

If you are interested in going further on that topic, here you can find some resources that inspired me, and I recommend you read:

Books:

   * <a href="https://www.goodreads.com/book/show/781559.Implementation_Patterns" target="_blank">Implementation Patterns</a>
   * <a href="https://www.goodreads.com/book/show/21841698-understanding-the-four-rules-of-simple-design" target="_blank">Understanding the Four Rules of Simple Design</a>
   * <a href="https://www.goodreads.com/book/show/67833.Extreme_Programming_Explained" target="_blank">Extreme Programming Explained: Embrace Change</a>
   * <a href="https://www.goodreads.com/book/show/3735293-clean-code" target="_blank">Clean Code: A Handbook of Agile Software Craftsmanship</a>

Links:

   * <a href="http://wiki.c2.com/?XpSimplicityRules" target="_blank">Xp - Simplicity Rules</a>
   * <a href="https://martinfowler.com/bliki/BeckDesignRules.html" target="_blank">Beck Design Rules</a>
   * <a href="https://blog.iterate.no/2012/06/20/programming-like-kent-beck/" target="_blank">Programming like Kent Beck</a>

Videos:

   * <a href="https://www.youtube.com/watch?v=Z-8ZGgGadHU" target="_blank">JBCNConf 2017 - Venkat Subramaniam - The Art of Simplicity</a>
   * <a href="https://www.youtube.com/watch?v=sXLCBcELu5Y" target="_blank">CAS2017 - Fran Reyes - Values and Principles in Software Design</a>
   
<br><br>
What do you think about Simple Design? Are you trying to create code that communicates, is simple and flexible?
Any feedback will be very appreciated.

Photo by <a href="https://pixabay.com/en/users/FelixMittermeier-4397258/" target="_blank">FelixMittermeier</a> on <a href="https://pixabay.com/" target="_blank">Pixabay</a>
