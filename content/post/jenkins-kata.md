+++
categories = ["docker", "culture-of-learning", "jenkins", "ci/cd"]
author = ""
featuredalt = ""
linktitle = ""
date = "2018-02-15T08:08:34+01:00"
title = "CI/CD Pipeline Kata"
description = "Training how to build a pipeline for continuous delivery"
featuredpath = ""
featured = ""
summary="slslslsl"
images = ["https://magonye.github.io/img/pipeline.jpg"]
+++
<img src="https://magonye.github.io/img/pipeline.jpg" />
<a style="margin:.50em; float: right; background-color:black;color:white;text-decoration:none;padding:4px 6px;font-family:-apple-system, BlinkMacSystemFont, &quot;San Francisco&quot;, &quot;Helvetica Neue&quot;, Helvetica, Ubuntu, Roboto, Noto, &quot;Segoe UI&quot;, Arial, sans-serif;font-size:12px;font-weight:bold;line-height:1.2;display:inline-block;border-radius:3px;" href="https://pixabay.com/en/users/Tama66-1032521/" target="_blank" rel="noopener noreferrer" title="Download free do whatever you want high-resolution photos from Tama66"><span style="display:inline-block;padding:2px 3px;"><svg xmlns="http://www.w3.org/2000/svg" style="height:12px;width:auto;position:relative;vertical-align:middle;top:-1px;fill:white;" viewBox="0 0 32 32"><title></title><path d="M20.8 18.1c0 2.7-2.2 4.8-4.8 4.8s-4.8-2.1-4.8-4.8c0-2.7 2.2-4.8 4.8-4.8 2.7.1 4.8 2.2 4.8 4.8zm11.2-7.4v14.9c0 2.3-1.9 4.3-4.3 4.3h-23.4c-2.4 0-4.3-1.9-4.3-4.3v-15c0-2.3 1.9-4.3 4.3-4.3h3.7l.8-2.3c.4-1.1 1.7-2 2.9-2h8.6c1.2 0 2.5.9 2.9 2l.8 2.4h3.7c2.4 0 4.3 1.9 4.3 4.3zm-8.6 7.5c0-4.1-3.3-7.5-7.5-7.5-4.1 0-7.5 3.4-7.5 7.5s3.3 7.5 7.5 7.5c4.2-.1 7.5-3.4 7.5-7.5z"></path></svg></span><span style="display:inline-block;padding:2px 3px;">Tama66</span></a>
<br><br><br>

Some time ago other team was managing the pipeline of my team's applications, and they were also testing and deploying our applications.

This separation of responsibility between creating the software and making it run was leading us to:

* **No ownership of the deployment process**: feeling of non responsibility within the team.
* **Errors on environments**: No visibility of where our code was being deployed was producing sometimes problems with configuration on environments, and they were tough to fix.
* **No knowledge of AWS**: the team had no much knowledge of the cloud platform our applications were being running. This was no motivating and frustrating.
* **No autonomy**: Some projects or tasks required the synchronization and help of other teams.

That's why my team started the DevOps journey.

One of our firsts problems was our knowledge about some tools needed to create a pipeline.

<a href="https://twitter.com/laurentiumarcut" target="_blank">Lau Marcut</a>, a terrific team colleague, made a push on this topic, and started learning everything he could about DevOps, and in a few time, he became a referent in this area. He prepared an exercise, very similar to the well-know coding katas, to train us to build a non complex pipeline.


_**DISCLAIMER**: Jenkins is the tool we chose, but there are other good tools, such as CircleCI, Travis, ... It's up to you to choose the most convenient tool for your purpose._
 
# The Kata

The CI/CD Pipeline Kata was divided in two parts. You can find them in the following links:

* <a href="https://github.com/Marcut-Laurentiu/kata-jenkins" target="_blank">Jenkins Kata - part 1</a>
* <a href="https://github.com/Marcut-Laurentiu/kata-jenkins-part-2" target="_blank">Jenkins Kata - part 2</a>

<br>
### First part

The first part tries to get you familiar with <a href="https://jenkins.io/" target="_blank">Jenkins</a> and `Jenkinsfile`, that is a file where all your pipeline script is stored, allowing you to use source control, code review and audit trail. In the exercise there is no Jenkins local installation, and everything is run from a <a href="https://docs.docker.com/" target="_blank">Docker</a> container.

Through this exercise, you will need to install some plugins in Jenkins, in order to build your application in a JAR file and upload it to an AWS S3 bucket, publish the jUnit results, and send a notifications to a Slack channel.

We ran this exercise in our Community of Practice, so we could share this experience with members of other teams. Here you can see the tweet of this event:
<center>
{{< tweet 920978985412104192 >}}
</center>
<br>

### Second part

The second part is a more challenging exercise. Some knowledge about Jenkins and building a pipeline is required. The first part of the Jenkins kata is an excellent introduction to the second part, so I suggest you to do it first!!

We will learn how to use <a href="https://jenkins.io/doc/book/pipeline/docker/" target="_blank">Docker with Pipeline</a>, an incredible way to run dependencies, as Maven or AWS client, without installation needed. You just run it from a docker image, just this way:

    docker.image("maven:3.5.0").inside() {
        sh "mvn -version"
    }

We will also learn how to use parallelism at stage level, with <a href="https://jenkins.io/blog/2017/09/25/declarative-1/" target="_blank">Parallel stages</a>, how to use an input to implement a manual confirmation before run some steps with <a href="https://jenkins.io/doc/pipeline/steps/pipeline-input-step/" target="_blank">Pipeline: Input Step</a> and other great features to enrich your pipeline, such as <a href="https://jenkins.io/projects/blueocean/" target="_blank">BlueOcean</a>, <a href="" target="_blank">Lockable Resource plugin</a>, <a href="https://wiki.jenkins.io/display/JENKINS/Pipeline+Milestone+Step+Plugin" target="_blank">Pipeline Milestone Step plugin</a>, <a href="https://jenkins.io/doc/pipeline/steps/workflow-basic-steps/#code-timeout-code-enforce-time-limit" target="_blank">Timeout step</a>...

Here you can see the tweet of this event:

<center>{{< tweet 933681376959827968 >}}</center>

<br>
# The Learning

The best way to learn how to use some tool or technique is by using. That's why coding katas became so popular. The repetition of some exercises, repeating the process again and again, in a safe environment, helps to acquire the expertice, by experiencing rather than reading. 

We tend to think some tool or tech is difficult, but in fact, it should be simple but not familiar for us. The usage and try by our own, can turn this unfamiliarity to more comfortable knowledge. That's one of the more important learning we got on the DevOps journey, and on this kata in particular.

Running a workshop is also a good experience for the facilitator:
 
* You get feedback from colleagues, and it helps you to improve your skills.
* You go one step forward in the topic, as need to have all concepts deeply learned to explain them clearly to a less experienced people. 
* You can interact with people that usually you don't work with. It can improve your relationship with other team's members.

Finally, I would like to thanks again to <a href="https://twitter.com/laurentiumarcut" target="_blank">Lau Marcut</a> for helping the team to achieve knowledge about Continuous Delivery so quickly, and also for being so amazing and stunning team mate.


<br><br>
What do you think about the Jenkins kata? Are you building your own pipeline?
Any feedback will be very appreciated.

Photo by <a href="https://pixabay.com/en/users/Tama66-1032521/" target="_blank">Tama66</a> on <a href="https://pixabay.com/" target="_blank">Pixabay</a>
