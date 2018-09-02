---
title: "Return type inference"
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

# Return type what?

- - -

```rust
let x: i32 = "667".parse()?;
```

- - -

```rust
let x: i32 = "667".parse()?;
                   ^^^^^^^- Result<F, <F as FromStr>::Err>
       ^^^- written by you to specify `F`
```

# Gotta go ~~fast~~ generic

- - -

```rust
impl String {
  pub fn parse<F: FromStr>(&self) -> Result<F, F::Err> {
    FromStr::from_str(self)
  }
}
```

- - -

- `impl FromStr for f64`
- `impl FromStr for u16`
- `impl FromStr for i32`
- `impl FromStr for usize`
- `impl FromStr for u32`
- `impl FromStr for bool`
- `impl FromStr for i8`
- …

# Thanks!

- - -

## Any questions?

I am Pascal

{[twitter],[github]}.com/killercup

Slides will be available on Github
