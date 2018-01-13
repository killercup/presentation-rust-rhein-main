---
title: "What the heck is Oxidation anyway?"
subtitle: "A deep dive into Rust -- a talk for Facebook Developer Circle Ruhr"
author: Pascal Hertleif
date: 2018-01-23
categories:
- rust
- presentation
theme: solarized
progress: true
slideNumber: true
history: true
---
## Hi, I'm not Jan-Erik

<blockquote class="twitter-tweet" data-lang="en">
  <p lang="en" dir="ltr">
    This was originally
    <a href="https://twitter.com/badboy_?ref_src=twsrc%5Etfw">@badboy_</a>&#39;s
    talk and I can&#39;t promise to deliver all the things he mentioned in the abstract
    (I need to make room for puns)
  </p>
  &mdash; Pascal (@killercup)
  <a href="https://twitter.com/killercup/status/951080111570333696?ref_src=twsrc%5Etfw">January 10, 2018</a>
</blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

::: notes

Thanks for the kind introduction!

Originally, this talk was supposed to be given by a friend of mine, but sadly Jan-Erik couldn't make it to Bochum this lovely Tuesday.

I can't promise to do the abstract to wrote for the invite to this even justice, but I'll do my best.

Feel free to ask questions during the talk, or after. I'll try to keep it short, and I hope we can have some discussions over a few beers afterwards.

:::

## Hi, I'm Pascal Hertleif

- Web frontend dev & Rust
- Co-organizer of [Rust Cologne]
- {[twitter],[github]}.com/killercup
- Rust-centric blog: [deterministic.space]

[Rust Cologne]: http://rust.cologne/
[twitter]: https://twitter.com/killercup
[github]: https://github.com/killercup
[deterministic.space]: https://deterministic.space/

::: notes

- I've been working with Rust since early 2014
- If you ever happen to be in Cologne, drop by our monthly meetups!
- And with that out of the way, let's get started!

:::

## And who are you?

::: notes

I talked to a few of you before hand but I just want to get a feel for what your background is, so I don't spend too much time talking about stuff you already know.
Who here is familiar with

- JavaScript
- Ruby, PHP, Python
- Go, D, C++
- C
- Haskell, Ocaml, Reason
- Lisp, Clojure

:::

# Rust is empowering

## Build low-level software

- Compiler ensures memory safety
- No garbage collector
- C-level performance

::: notes

- No GC
 - Embeddable in langs with runtimes
 - Embedded systems
- Perfect for people who are new to systems programming

:::

## Build high-quality software

## 

# Type Systems are great

---

<blockquote class="twitter-tweet" data-lang="en">
  <p lang="en" dir="ltr">
    how you know when you&#39;re on the right track
    <a href="https://t.co/Lp0L6CmhTv">pic.twitter.com/Lp0L6CmhTv</a>
  </p>
  &mdash; Eliza&#39;s very very very very very long display name (@mycoliza)
  <a href="https://twitter.com/mycoliza/status/951982713736781824?ref_src=twsrc%5Etfw">January 13, 2018</a>
</blockquote>

## 

# Thanks!

- - -

## Any questions?

Slides available at [git.io/rust-fb-dev-circle](https://git.io/rust-fb-dev-circle)
