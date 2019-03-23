# Data Science, Politics, Ethics and feedback

_Disclaimer: I am not an ethicist. I am not a data scientist. I am not an engineer. I do not own any degree or official education in Cybernetics, Human Factors or System Thinking. I am at best a student in these fields. I did follow an engineering cursus but dropped out for better paid jobs in IT before finishing. I did have an education in Control Theory. I am a developer and computer scientist. I am not an academic. I am a French, living now in France._

So a few days ago, @farbander pointed me to an interesting paper on twitter. We were talking of "ethics" in IT/CS. And i had brought my usual point of developers in general only being interested in the act of building, not in the act of applying it to help. You can follow the tweet linked with the paper to see the whole thread.

[insert link here](insert full title of the paper here)

The paper made me think a lot and i want to put my thinking out there. I like a lot of things in it, but it also generate a lot of "blips" in my "something seems funny" sense (a sense that i am sure a lot of operators of complex system knows). It took me some time to find why, but i think i got some answer after digesting it more.

There is a lot of good in the paper, especially in the deconstruction of the defensive arguments used by the data scientists to defend their positions. And i really appreciate that our field of CS/IT are talking more and more publicly of this kind of problems. And countering the excuses by people in our field doing things most of us are not really happy really need to become a skill we know how to use more. "I'm just an engineer" is slowly becoming the easiest way for me to dismiss you as someone i would never hire. We need to explain better why it is a really bad take.

It is a paper highly targeted at data science, as it is, it seems, the domain of the author. I will try to limit my points to data science too, but i may move toward more generic CS from time to time.

The paper present first an explanation of why even talk about ethics and politics in data science. Explains what politics means. It then try to debunk some fairly classic excuses used in CS and IT for unleashing an abomination on the world that kill people. The last part is a kind of "program" in 4 stage to move Data Science from the currently described place of "après moi le déluge" to a place of fully aware of its holistic impact on the world as a politically aware domain. I will not repeat what the paper says but only offer some thought i had on it.

## Something to Believe In

I want to begin with a bit of background. I am going to look at the problem from a control theory and system thinking point of view. The first thing we need for control theory is a goal. What do we want to achieve? Why do we want to change how the system work ? It may be a negative goal: do not do that thing anymore. Or a positive goal: Do good things. In the case of Data Science, it is a complex question, but in general we want to try to enhance our society in term of Human Rights and equality, while not reinforcing existing problems. I am glossing over a lot of things here but this is not the good post for a dissertation on societal goals.

It is a point where i have problems with the paper. It never states their goal. They point to some case as problematic. I will call them incidents. But they never define how the incident has created a loss or why. I will come back to that point later, but it is telling of our problems to go over blame and learn from these incidents.

The second thing we need for control theory is to understand the idea of feedback. Control theory can be resumed to agents that interact. These interactions will influence the next actions by the receiving agent. If an interaction is the consequence of an action done by the agent, we are talking of feedback. The agent did some action and it received an information that will change its behavior based on the consequences of that actions.

This lead to the possibility of modeling networks of agents. Something control theory shows is that without feedback to keep it on its goal, it is really easy to get a system that will be go away from it. There are multiple forces applying to an agent, multiple interactions. And unless you build the system to keep the agent on goal, these multiple evolving forces will probably move it away from the goal you wanted it to follow.
This is my second problem with the paper. It does point really heavily to a "culture of politics and ethics in the domain" as a form of control and feedback on actions by data scientists. It is totally true that the culture of a group or a domain will influence its members and apply some control on their actions. And on that the paper is on point.

A culture is not something that appears in a vacuum. A culture is shaped and created by the different forces that apply to it. Culture is an abstract embodiment of "how things are done" in a group. And this itself come from all the pressure and feedback applies to the domain and its practitioners.

That is why to change a culture we need first to understand where it come from and what feedback to apply on it to compensate.

## Blunt

These two things, need to know the goal you want to enforce and have the means to enforce it come back in the problem of Ethics in Computer Science.

Something i keep finding the need to point out is that *we do not have ethics in CS*. There are a couple of code of ethics. But until the field make following one of them a fundamental part of what define a computer scientist, you can not say that a CS practitioner did something unethical. We do not have a code to follow anyway. He may do something that is deeply unsettling, illegal, infringing Human Rights or plain and simply "wrong", but it was not unethical.

That is a sad state of affair that i would like to see fixed.  This is something the paper point to in the "I am just an engineer" debunk. An important characteristic of an expert (some would say of a professional), is that they have a deep sense of responsibility. Experts know that their decisions and advices have consequences. They do not have to take all the decisions themselves, especially in democracies. But they do understand the impact of their decisions and advices. This is one of the reasons i keep saying that few people in CS/IT are experts. [link blog post about crash](See here for my take on the responability of expertise).

That is the core of my problem with the debunk of "i am just an engineer" defense. All the debunk is good around the responsibility of experts and the impact experts make on society. We impact the tools people use to interact with the world and with others. It is a pretty transforming and powerful power in any system. And i feel that there would be a need here to reiterate that if you use that excuse *you are not an expert nor an engineer*. By definition of what an expert is, *an expert would never say that*.

## Gunfight

Something that i feel missing a lot in that paper is related to that. We, as a field, need to decide on a base of, at least, rules to follow to be considered part of the field. And we need to *enforce* them in a way. Until then, we can keep crying wolf all we want when someone do something that seems really bad, but all we can do is keep offering some wild ideas of how we could change the field. And the systemic forces that created that whole "wrong" situation will keep happening. We need some compass and we need feedback to enforce it.

Making people go work for government for some time or trying to "wake up" their political sense will not help. It may even make it worse by giving far deeper motivations to the one doing things we would call "unethical" now. Find that "pre-crime" is deeply problematic now when people do it for the fun of it and because they read too much (or not enough) Minority Report ? Wait until they do it because they politically really believe that it is a way to enhance security.

What we need is not an inward look at how we could be so much better if we got a political conscience. We need to build *systemic* forces that can counter the one creating the problems we are having. And i would like to point out that "spending some time working as data scientists for local government" may seems really cool, but is probably quite limited in the impact. If it even survive as a policy for more than a few years. And if government does something with it. As most of the "help government" initiatives showed, the problems of government are rarely data science but more *politics*.

## Takin' Up Space

So let's think. What kind of systemic actions could we take.

First, we need to agree on a code of ethics. Or at least a set of rules defining what we accept or not. Then we need to be able to have a mechanism or system to enforce it. If you do not respect it, then you are out. Out of what ? well that is the problem isn't it ? and the thing i feel the paper is pampering around. We have no control of who is a data scientist. Or who is a developer. Who is building insecure apps. Who build apps that are basically an abuser dream.

I do not have good answers. At that point i think we need or a governmental action, that will need to be internationally coordinated. Or we need to be able to create an entity that enforce a code and provide value to the companies employing computer scientists and university. So that it has a systemic advantage. I sadly do not have great ideas on how to do that yet. Contact me if you have some please ?

## You've got a problem without knowing it

The other thing about systemic problems is that we need to understand them better. The paper seems mainly based as a reaction to a really "wrong" study [insert link to  the gang study](, a study about gang based on LAPD data). I really do not like that study and can see the problems with it. Hell i would probably have sweared a lot if they presented it to me.

But to be able to begin to address systemic problem, we need to understand the systemic forces at play. And the best way to do that that i know of is an investigation. Not a "who is to blame" investigation. No an investigation that look in depth at all the feedback and control in action here. At all the agents that are part of that incident. I can advise [insert link to field guide](Sydney Dekker book here). We can try to make the data scientists aware of politics all we want, we also need to look at what kind of pressure and demand they face. If the pressure stay the same, providing them with a political conscience will just raise the suicide and depression numbers.

What does society expect from them ? Why ? What does the people that pay them expect ? Why ? keep going, keep exploring. Find what are the pressure and feedback that brought Data Science where it is today.

Let's publish an NTSB-like report on a "wrong" study every time one happen. It will serve two ways. First it will allow us to know where to apply pressure, what to change and more importantly, how the hell did that happen. Secondly, it will allow the exact kind of political impact discovery by computer scientists. Because they will know this was wrong, why, and how it happened. This will help them understand their place in society.

There are deep problems in our field. I have my opinions on a couple of them. There are some outcome we all agree are wrong. But it think we really need to stop offering solutions that are just trying to offer a way out, without changing the structure in which we work. We need to stop looking at possible magical solutions that would "wake up" our field. 

We need to work deeply at what are the systemic forces that keep pushing us in that situation and talk about them in a way that can be understood by our field. If you want computer scientists to get a better political conscience, show them the system they are part of. Give them the tool to devise solutions. Wishful thinking will not bring us far. Looking at the systems we are part of and asking a whole field of problem solvers to apply pressure may be a little be more useful.