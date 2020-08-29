+++
author = ""
featuredalt = ""
featuredpath = "https://magonye.github.io/img/"
linktitle = ""
title = "Design Principles"
date = "2017-11-10T08:48:16+01:00"
featured = "design-principles.jpg"
description = "Some light on design principles"
categories = ["design"]
+++
I had some concerns about Design Principles, so I talked with my mentor a little about them, their importance and we also tried to demystify them, why not?

Below there is a recap of the main design principles we covered with this exercise.

# SOLID Principles

Five design principles intended to make software designs more understandable, flexible and maintainable. They became very popular, as they were promoted by <a href="https://sites.google.com/site/unclebobconsultingllc/" target="_blank">Robert C. Martin</a>, and they are now key design principles in object oriented programming.

I heard some people talking about S.O.L.I.D. as if they were some kind of religion or _mantra_.

But are they so important? Let's see each of them, one by one:

**Single Responsibility Principle [S.R.P.]:** 

> A class should have one and only one reason to change. 

The principle is talking about classes, but you can put here whatever you want: a class, a module, a package, a component, a method ... as you can see, what this principle is talking about is that your software should be low coupled and high cohesive. Object and methods should have only one job. In this way, both the reasons to change a class and the number of classes to change within a feature will be minimized.

**Open-Closed Principle [O.C.P.]:** 

> Objects or entities should be open for extension, but closed for modification. 

Although it might sound weird at the beginning, this principle is telling that your software should be easy to modify.

It's easy to thing about this principle if you think on a **switch sentence**. Each time you add a new case, you should touch the switch method, putting in risk every case, right?

I think this principle is hard to accomplish at 100%, but you can minimize the parts you should change when adding new functionality to your software. And this principle should be followed as an advice, so try to make your software easy to extend, but don't get crazy trying so hard!

**Liskov Substitution Principle [L.S.P.]:** 

> Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program. 

This principle is a pure Object Oriented thing, it's all about hierarchy. It's telling that you should be careful about inheritance, and don't make mistakes. 

For example, if you have _rectangle_ objects with **setHeight** and **setWidth** methods, _square_ objects shouldn't extend _rectangle_, as their height and width should be the same. _Square_ objects with separate setters for height and width could bring you some inconsistencies.

**Interface Segregation Principle [I.S.P.]:** 

> A client should never be forced to implement an interface that it doesn't use or clients shouldn't be forced to depend on methods they don't use. 

This is one of the easiest principles, in my opinion. If a client doesn't need to use a functionality, don't make the client to implement it. It's better to create two clients, and in this way your software can use one client or the other, depending on the functionality needed. 


**Dependency Inversion Principle [D.I.P.]:** 

> Entities must depend on abstractions not on concretions. 

This principle encourages you to write code that depends upon abstractions rather than upon concrete details. This is, for me, one of the hardest to understand. What basically is saying is that your program should be based on concepts, not on implementations. In this way, your software will be easy to maintain, and the risks will be minimized.

Let's see an example: if your software needs to use logging features, it's better to use an interface of the logging, instead of use directly the implementation of the logging. If you should make changes on that logging functionality, your code will be safe, as it's based on your interface, not your implementation of that logging.

For more information about S.O.L.I.D. you can read the <a href="https://www.goodreads.com/book/show/84985.Agile_Software_Development_Principles_Patterns_and_Practices" target="_blank">Agile Software Development, Principles, Patterns, and Practices</a> book and the following <a href="http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod" target="_blank">post</a>, both from <a href="https://sites.google.com/site/unclebobconsultingllc/" target="_blank">Robert C. Martin</a>.

 
# Other Design Principles

**Don't Repeat Yourself [D.R.Y.]:**

The DRY principle states that duplication of logic should be avoided.

<a href="http://wiki.c2.com/?DontRepeatYourself" target="_blank">Here</a> you can read more about this design principle.

**Keep It Simple, Stupid! [K.I.S.S.]:**

KISS principle (_Keep It Simple and Small_ could be a more polite version) is talking about designing software as much simple as possible. This principle is against the over-engineering solutions that are trying to predict the future, and making them difficult to understand for new developers.

<a href="http://wiki.c2.com/?KeepItSimple" target="_blank">Here</a> you can read more about this design principle.

**You Aren't Gonna Need It [Y.A.G.N.I]:** 

This principle states that functionality should not be added to a software program until it's strictly necessary.

<a href="http://wiki.c2.com/?YouArentGonnaNeedIt" target="_blank">Here</a> you can read more about this design principle.

**Separation of Concerns [SoC]:**

Very related to the SRP, SoC is about designing you application having in mind that different concerns should be placed in different parts of your software.

<a href="http://wiki.c2.com/?SeparationOfConcerns" target="_blank">Here</a> you can read more about this design principle.

# Conclusions

Design principles are very important. As much design principles you know, the more qualified you are to do your job, as they are rules, advices and guides about software design.

Although they are important, you should not be an obsessed of them. Principles are there to help you decide the best option when you are designing. You should know them, slowly, understanding deeply their meaning and purpose. And you should use them wisely, but also with common sense, because there is a thing more important than software design principles. And this thing is the way you code and they way you apply the principles: your craft. 


By following design principles, you will able to make software that is:

* maintainable
* usable
* less coupled
* more cohesive

<br><br>
What do you think about design principles? Are you following them? And what about SOLID principles?
Any feedback will be very appreciated.

Photo by <a href="https://unsplash.com/photos/dQf7RZhMOJU?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Fleur Treurniet</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Unsplash</a>
