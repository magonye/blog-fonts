+++
title = "Git: how to squash commits already pushed"
featured = ""
description = "A few days ago I was working on feature in a project, and after a lot of commits and pushes, I wanted to show to my colleagues my changes in a single commit."
categories = ["git","tips"]
author = ""
date = "2017-08-08T08:30:46+02:00"
featuredpath = ""
linktitle = ""
featuredalt = ""
images = ["https://magonye.github.io/img/git-squash-photo.jpg"]

+++

[logo]: https://magonye.github.io/img/git-squash-photo.jpg "Git Squash Main photo"

![Git Squash Main photo][logo]

A few days ago I was working on feature in a project, and after a lot of commits and pushes, I wanted to show to my colleagues my changes.... but I wanted to show them in a single commit. 

How could I join my 10 commits in a single one?

I had heard about squashing commits with git before, so I was confident it would be easy to do.

Googling a little, and reading some examples, I was confident about what I had to do:

```
git rebase -i HEAD~10
```

You can look at the [git documentation](https://git-scm.com/docs/git-rebase#_interactive_mode), if you want to know more about _git rebase_ command.

The key is the interactive mode (**-i**), that allows you to edit the commits which are being rebased.

At this point, the editor  opened, with the list of commits that I was rebasing, and some instructions. Something similar to this:

```
pick affab1e The first commit for the feature
pick accab1e The second commit for the feature
...
pick abcdef1 The last commit for the feature
```

Here, I only had to change the second and following commits, replacing *pick* with *squash*.

```
pick affab1e The first commit for the feature
squash accab1e The second commit for the feature
...
squash abcdef1 The last commit for the feature
```

After looking to my *git log*, I was exulting. Now the log looked amazing, with my new brand feature in a very single commit.

But the problems began when I tried to push the *rebased* commit. Git didn't allow me, because I was required to do a *git pull* before.

Here I got stack on an evil loop:

<center>
<img src="https://magonye.github.io/img/git-squash-evilloop.png" alt="Git Squash Evil Loop" style="width: 400px;"/>             
</center>
               
After a few attempts, and the priceless help of a colleague, I realized that I couldn't go forward with the squash this way.

This process would work to me if I hadn't pushed the commits that I wanted to squash. On this scenario, Git wouldn't ask me for a *git pull*, and I could push my squashed commit without problems. And that is because my remote repository wouldn't have any of the commits I was trying to squash, as my local repo would be beyond my remote repo.

What I needed to do was to force push with:

```
git push origin +branch
```

With this command, that worked to me as a charm, finally I was able to push my feature to the branch as a single commit, although I had already pushed it before in separated commits.

You can find more info about **+\<refspec>** command at the official documentation of [git push](https://git-scm.com/docs/git-push#git-push---force).

Do you have any experience with squash? Do you know a better way to solve this? Please, give me your feedback, it will be very appreciated.