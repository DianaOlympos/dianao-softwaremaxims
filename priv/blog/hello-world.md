# Hello World

Finally. After more than two years of talking about it, I have a place to put my rants on. I want to talk about the tech stack behind it and some choices I made. I ended up writing my own blog engine and learn a bit in the process.

## I'm Bad, I'm Nationwide

You can find the sourcecode of this whole website [on my github, on the repo with the correspoding name](https://github.com/DianaOlympos/dianao-softwaremaxims). It is a fully home-grown elixir codebase, using Phoenix. I thought for a long time about just using existing tools like Ghost, Jekyll or Wordpress. It would have been far more maintained and there exists a lot of place to host your own. 
The reason I went home-grown is quite sad : I was never able to use these tools. Jekyll with Github Pages especially, I was never able to understand how to create and write a post using it. The documentation of Jekyll has always been hermetic to me.

Additionaly to that, I wanted to play a bit with CSS and the web side of things, as it is not really something I have strong skills at. It was both a learning experience, but also the possibility to build a tool that would suit me.

## 16 Tons

I used a quite simple stack. The whole backend and templating is written in [Elixir](https://elixir-lang.org/), using the [Phoenix framework](https://phoenixframework.org/). I spend most of my time at work in Elixir and have been advocating the language for years, it was natural to use it. Phoenix is the main framework in the ecosystem and it is perfectly adapted to this type of site, being highly modular.
Blogposts are written on files with Markdown templating. A TOML file is used as index, and there is no database. I did not saw the need for one, and I am usually a big proponent of minimalism. It was the perfect occasion to live by my words.

The blog is hosted on the free tier of [Gigalixir](https://gigalixir.com/), with [Cloudflare](https://www.cloudflare.com/) DNS and CDN free tier in front, which should be far enough to handle the load you may send.

## Sharp Dressed Man

The part that took me most of the time is the styling. I have a lot of opinions on CSS and how to use it. Recently, I have found that [Tailwindcss](https://tailwindcss.com/) seems to fit most of the bill of the mix of simplicity, composition and extensibility I want from my CSS. I used this project as a way to test-drive it. So far it has been quite pleasant to use. I still need to clean up some rough corners of my templates, but it has been a breeze to use.

I chose to work with a simple palette of 5 colours.

```CSS
'light-colour': #FFFFFF;
'main-colour': #1E88E5;
'light-accent': #D55E00;
'dark-accent': #7A546B;
'dark-colour': #191C22;
```

I wanted a palette with main colours that had some punch, but also a dark theme that would drawn out the noise. Finally and probably the most important part, i wanted a palette that could work equally well for all type of colour blindness.

These constraints written down, i worked with two tools. The first is called [Colormind.io](http://colormind.io/bootstrap/). It was really useful to find colours that mix well together, as it offers colours that are part of palette extracted from pictures that already have the rest of your colours. The second tool was the [colourblind post and tool from David Nichols](https://davidmathlogic.com/colorblind/#%23FFFFFF-%23D55E00-%231E88E5-%237A546B-%23191C22). You can set your palette and see how different colour blindness affect it. The link should show the website with my palette loaded, which should enable you to see that indeed, the palette fit my requirements.

That said, i am not a fan of the dark accent colour i am using right now, and i may end up revisiting it. But i want to make efforts toward accesibility in my work and this was a step toward it.

## Brown Sugar

And that is it. The site is quite simple for now. I still need to fill some of the sections and i already have a few issues open to remind me on how to extend it. Hope you enjoy and have a good day.