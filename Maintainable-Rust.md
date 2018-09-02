---
title: "Maintainable Programs"
subtitle: "in Rust"
author: Pascal Hertleif
date: 2018-08-10
categories:
- rust
- presentation
theme: solarized
progress: true
slideNumber: true
history: true
---

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
- I have stickers!
- And with that out of the way, let's get started!

:::

# Priorities

- - -

1. It works
2. It works correctly
3. It's fast

. . .

4. ???

. . .

5. ???

. . .

99. It still works after a year

# Operational

## easy building

`cargo build`

be wary of -sys crates

## Simple packaging

_Everyone_ can release a new version

Packaging is done automatically

Generate cross-platform binaries on CI

## Good logging

logging is like `println` debugging where you already have the `println`s

. . .

a year from now, `-vvvv` is your best friend

# Future-proof APIs

- - -

- API surface as small as possible
- include examples
- cf. [rust-lang-nursery.github.io/api-guidelines](https://rust-lang-nursery.github.io/api-guidelines/)
- cf. [deterministic.space/elegant-apis-in-rust.html](http://deterministic.space/elegant-apis-in-rust.html)
- include more examples

# Internal structure

## Modules

…are just crates that haven't been extracted yet

## Name concepts

You _will_ forget all the hidden/indirect concepts

It's very hard to even notice them when writing the code

## Don't overdo it

Trying not to be too clever and abstract away too much

A half-finished refactoring from three years ago is more confusing than helpful

# Retries

## Supervisor

- It's a Ruby keyword!

# One last thing

- - -

Write commit messages that tell me the intent of your change

. . .

I love reading old commit messages to get into the mindset of the original author


# Thanks!

- - -

## Any questions?

I am Pascal

{[twitter],[github]}.com/killercup

Slides will be available on Github
