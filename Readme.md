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

## Here is what Rust gives you

the ability write fast and correct programs with confidence

> - Memory safety without garbage collection
> - Concurrency without data races
> - Zero-cost abstractions
> - endless supply of fancy buzzwords

## Rust is

> - a compiled language
> - a very strongly statically typed language
> - production-ready
> - an amazing open source project
> - not just iron oxide but also a fungus

## Build high-quality software

- Local reasoning
	- e.g.: Making mutations visible
- Clear interfaces and name-spacing
- Dare to write "risky" code – the compiler has your back

## Build low-level software

- No garbage collector
- C-level performance
- Compiler ensures memory safety

::: notes

- No GC
 - Embeddable in langs with runtimes
 - Embedded systems
- Perfect for newcomers to systems programming

:::

## Rust use cases

- ripgrep
- Mercurial (hg)
- Firefox

# Ownership and Borrowing

::: notes

GC vs manual memory management

Third option: tracking resource lifetimes

:::

## Take ownership

```rust
struct Thing(i32);

fn foo(bar: Thing) {}

let x = Thing(42);
foo(x);
// foo(x); // ERROR: x moved into foo
```

## Borrow a reference

```rust
fn foo(bar: &Thing) {}

let x = Thing(42);
foo(&x);
foo(&x);
```

## Borrow a mutable reference

```rust
fn foo(bar: &mut Thing) {}

let mut x = Thing(42);

foo(&mut x);
foo(&mut x);
```

## Scoping

```rust
fn foo(bar: &Thing) {}

let x = Thing(42);
foo(&x);
foo(&x);

// drop(x);
```

::: notes

Finalizers, destructors

Close files, sockets, whatever

:::


# What does Rust feel like

---

> Rust walks a razor's edge of "overly explicit and annoying" and "overly terse and confusion".
>
> How well it succeeds at that is subjective.
>
> — [Quxxy on /r/rust](https://www.reddit.com/r/rust/comments/70g0i2/a_complete_list_of_notes_on_the_rust_book_from_a/dn3afxj/?context=1)


## Type Systems are great

<blockquote class="twitter-tweet" data-lang="en">
  <p><img src="https://pbs.twimg.com/media/DTYfMDQVQAAswA8.jpg"/></p>
  <p lang="en" dir="ltr">
    how you know when you&#39;re on the right track
  </p>
  &mdash; @mycoliza
  <a href="https://twitter.com/mycoliza/status/951982713736781824?ref_src=twsrc%5Etfw">January 13, 2018</a>
</blockquote>

## Examples

```rust
# extern crate reqwest;
# extern crate serde;
# #[macro_use] extern crate serde_derive;

#[derive(Deserialize)]
struct Commit { commit_message: String }

# fn fetch() -> Result<(), Box<Error>> {

let url = "http://whatthecommit.com/index.json";
let msg: Commit = reqwest::get(url)?.json()?;
println!("{}", msg);

# Ok(())
# }
# fn main() { fetch().expect("Oops!"); }
```

# Community

---

A lot of smart people work on Rust

...

And they want you to feel smart, too!

# Thanks!

- - -

## Any questions?

Slides available at [git.io/rust-fb-dev-circle](https://git.io/rust-fb-dev-circle)
