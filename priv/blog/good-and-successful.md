# Good and Successful

Recently, I discovered [this blogpost](https://chrismcmahonsblog.blogspot.com/2019/05/evaluating-test-suite-toad-thought.html). It generated a bit of discussion on Twitter, which [you can find here](https://twitter.com/chris_mcmahon/status/1131287381573660674). One of this response was around how we can define "good", especially for that topic of testing. As the blog talk of an imaginary perfect test suite, it seems to matched with some of the learning I was doing on Blameless Postmortem. So, I decided to write it down and make it public. If you have any comments, I would love to read and discuss them.

## A bit of background

Recently, I have been working through a lot of the work produced by the world of Resiliency Engineering. This should not be surprising to people following me, as I have been interested in topic like System Thinking, Safety-II or Human Factors for a while. And RE is a natural follow-up for these one from someone in the IT community. One of the things that is said a lot to the field of RE is that we do not offer a lot of pragmatic solutions.

Despite that, there is one "tool" that the field offer that has been talked about a lot in the recent years in the IT world. The idea of "blameless postmortem", and of "learning from incidents". We should particularly thank the folks at Etsy under the leadership of John Allspaw, who published in 2016 their [Debriefing Facilitation Guide](https://codeascraft.com/2016/11/17/debriefing-facilitation-guide/).

The idea behind learning from incidents is that "success", in that of a day where your systems seems to work "correctly", is really hard to define by itself. It is really hard to tell what success look like in term of practice and path to it in day to day work. Things "Just Works". People adapt and fix problems. We deploy new parts of the system. We change them. People have meetings. Defining the essential part of that work that can be defined as the path to success are really hard when everything goes right.

## Bringing Light to Darkness

In that light, one way to discover what success mean is to get a "failure event", an incident. An incident is a visible and unavoidable proof that you were not successful. It is a starting point that allows you to explore your system. Beginning with that failure event, you can compare it to what people does everyday. From studying the story of that event and comparing it to what is done everyday, you can learn what happened. You can learn what people does everyday. You can ask question that will elicit sharing of that everyday work.

The idea goes even deeper. The stories of how things went wrong but also of how people do their work everyday allows others to read and learn from it. More than a call to action to "fix" how your systems work, an incident become a place to learn about how it works in the first place. And it is now a lesson that you can pass to others in your organization. In that view, success and "good" is defined by ... doing the work everyday. The only way to learn what good means is to run experiment and explore the limits of your systems. This is something we are hearing more and more under the idea of Chaos Engineering, but I sometimes wonder if the community of testers would not also think of it as Exploratory Testing. On that light, an incident is an "unplanned experiment".

This provide us with the "postmortem" part of "blameless postmortem". What about the "blameless" part?

## Imagination

Another element of thinking that success and "good" are really hard to define is that it redefines what "failure" means. Whatever you define as "correct" can only be a limited and sometimes wrong model of the reality of your system. People in Safety-II regularly talk of Work-As-Imagined and Work-As-Prescribed to talk of "the correct way to do things" or the "normal" way to do things. They use the term "Work-As-Done" for the realities of how your system works. Your incident allows you to explore the realities of "Work-As-Done" and allows you to reflect about it and propagate that learning to your organization.

And it also brings to us the idea of "blameless". Historically, postmortem have been about two things. Defining what happened compared to what *should* have happened. And offering a list of actions to change your system. This is something Resiliency Engineering would push back on. It does not mean you may not have actions to take. But the reality is that your systems already work.

This is especially interesting, because it means that creating a "correct" view of your system will always be impossible. But also, these same experiments we talked about before are also what allows us to regularly explore and close the gap between "Work-As-Imagined" and "Work-As-Done".

## And what about defining "good" for testing

That bring us to my thought generated by that original TOAD post. Whatever that "perfect" test suite that exist, or at least a "correct" one, will always be about "Work-as-Imagined". There will always be tension between it and reality. We will never be able to fully define what "good" and "correct" look like from first principles. But what we can do is experiment. And learn from it. We can learn from the failures on what "good" looks like. So here is the opening for the TOAD bloggers out there. How would you use this to learn what "good" looks like?