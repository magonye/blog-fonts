+++
linktitle = ""
date = "2017-08-17T08:26:43+02:00"
description = "Finding a solution to store passwords securely, and accessible for all the team members"
featuredalt = ""
featured = ""
title = "Password Manager: Why and how to store passwords securely"
categories = ["security"]
author = ""
featuredpath = ""
images = ["https://magonye.github.io/img/password-manager.jpg"]

+++

[logo]: https://magonye.github.io/img/password-manager.jpg  "Password Manager"

![Password Manager][logo]

# The Problem

Currently I'm working on a the team that needs to handle with a lot of passwords. These passwords are critical for the company, as they are mainly Payment Provider password accounts.
Since now, we were using different kind of storage mechanisms, non of them really secure (internal confluence pages, shared plain text files, etc...).

So, in order to upgrade our security standards, we needed to choose some mechanism that could provide us the following features:

* **Secure**: Of course this was the main goal, we wanted something really secure.
* **Collaborative**: We needed something that could be accessed from different computers, from inside the company, and outside, as we have a colleague on remote.
* **Cross-Platform**: We have several computer flavours on the team (OSX - Win - Linux).

# The solution

After some research, and also consulting our security consultants, we decided to use [KeePass](http://keepass.info/). KeePass is a free open source password manager that stores passwords in an encrypted database, and locked by a master password or/and a key file.

KeePass uses very secure encryption algorithms (AES and Twofish). You can find more information [here](http://keepass.info/features.html).

You can place the encrypted password file on a company shared folder, on cloud or even on local at your machine. As much secure the place you stored it, the better.

Some security rules are recommended: the usage of strong and long master password, and defining a rotation for the master password are some of them. Our master password is 100 char length, and it rotates every 30 days. This is something that KeePass helps you, with a lot of useful options and tips.

There are a lot of implementations of KeePass, you can found them [here](http://keepass.info/download.html). As you could see, all most known platforms are covered, from computers to mobile devices.
Some of these implementations allows you to store the encrypted password file on a cloud storage, so the combinations are multiple, you need to choose the one that fits you more.

# What did we learn?

We realized that not everybody inside the team was storing their password properly, so we installed a personal KeePass file for those, so they could stored their password safely. They improved their personal security, and the security of the team, as well.

We also realized that we can store on KeePass almost everything, not only payment provider passwords, also infrastructure passwords or important documents and files. Everything now is secured!!!

# Which are the next steps?

We want to create two different password files, on for test environments and another for production environments. Now we have only one file, with both environment together. With the split, we will gain security, and we will be able to give more granularity access to our environments, depending of the role of the team member. There are team members that don't need to have access to our production environments, only to the test ones.

Do you have any experience with password managers? Do you know a better way to solve this? Please, give me your feedback, it will be very appreciated.