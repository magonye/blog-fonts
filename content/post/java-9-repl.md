+++
date = "2017-09-27T08:22:31+02:00"
title = "JShell, the REPL console in Java 9"
featuredpath = "https://magonye.github.io/img/"
featured = "java-9-repl.png"
author = ""
featuredalt = ""
linktitle = ""
categories = ["java-9","tips","docker"]
description = "Discovering the new REPL built-in console in Java"
+++
On this post, I will cover one of the new Java 9 features that attracted my attention: REPL.

If you want to know what's new on Java 9, you can visit this [link](https://docs.oracle.com/javase/9/whatsnew/toc.htm). 

# What is a REPL

REPL stands for Read-Eval-Print-Loop. It's a shell where the user can type an expression, it will be evaluated, and the result will be returned to the user.
 
To me, the main purpose is to interact quickly with Java without creating a java file, compile it and run it. Now, you can try any sentence easily from the shell. Although you may finally use test classes in order to discover a new java api, it could be interesting the usage of this console for prototyping, quick evaluations of any kind of sentence, and also for learning purposes. JShell is very useful for young developers and it allows beginners to learn the Java language.    
 
You can find more info about REPL [here]([REPL wiki](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop)). 

# An example is worth a thousand words

Instead of writing a .java file, and compile it and runt it:

```
public class TestRound {
	    public static void main(String[] args) {
		    System.out.println(Math.round(34.543));
	    }
}
```
```
javac TestRound.java
```
```
java TestRound
```

You only need to type the following:

```
jshell> Math.round(34.543)
$1 ==> 35
```
The shell shows you the result, and assigns it to a variable.

# Creating methods

Also you can create the following snippet:

```
jshell> void echo(String s){
   ...> System.out.println(s);
   ...> }
|  created method echo(String)
```

and you can call this new method, this way:


```
jshell> echo("test")
test
```

# Things that I love from the REPL

Here is a bunch of things I love from this new shell:

* It's built-in in Java 9.
* You can test any Java expression without a class file, compiling and running it.
* It autocompletes the methods, just typing the TAB key, as in your editor.
* You can define methods, and call them later.
* It shows you the exceptions, if they are thrown.
* You can edit any method, and change them.
* There are build-in commands. [Here](https://jshelltutorial.com/collection-of-jshell-commands/) the list of commands.

# Using it on a Docker Image

If you want to test this feature, but you don't want to install Java 9 on your machine, there is an easy way to run Java 9 using Docker.

1- Create a Dockerfle like this:

```
FROM java:9-jdk
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
CMD ["/bin/bash"]
```

2- Build the image:
```
docker build -t my_java9 .
```

3- Run the image:
```
docker run -ti my_java9 /bin/jshell 
```

4- If you prefer, you can create a shell file like this:
```
#!/bin/zsh 
docker run -it my_java9 /bin/jshell
```

5- Once on the jshell, you can change the default editor, with the following command:
   
   ```
   /set editor /usr/bin/vim
   ```
   From now, when you execute the command **/edit** on the shell, **vim**  editor will be launched.
   
<br><br>

If you liked this post, or you have doubts, please, let me know.

Any feedback will be very appreciated.