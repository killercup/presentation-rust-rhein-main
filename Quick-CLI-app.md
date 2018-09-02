---
title: "A Quick CLI app"
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

# Please interrupt me

# Rust is a high-level language

- - -

Yes you can see it as replacement for C++

Yes you can also do very cool "scripting language" like stuff with it

# Boilerplate-free CLI

- - -

```rust
/// Get some cool commit messages!
#[derive(Debug, StructOpt)]
struct Cli {
    /// How many?
    #[structopt(long = "amount", default_value = "3")]
    amount: i32,
}
```

- - -

```text
commit-msg-gen 0.1.0
Your Name <your@email.address>
Get some cool commit messages!

USAGE:
    commit-msg-gen [OPTIONS]

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information

OPTIONS:
        --amount <amount>    How many? [default: 3]
```

# Getting some data

- - -

```rust
reqwest::get("https://whatthecommit.com/index.json")?
```

- - -

```rust
reqwest::get("https://whatthecommit.com/index.json")?.json()?
```

# Boilerplate-free (de)serialization

- - -

```rust
#[derive(Deserialize)]
struct Commit {
    commit_message: String,
}
```


- - -

```rust
let c: Commit = reqwest::get("https://whatthecommit.com/index.json")?
                        .json()?;
```

# To summarize

- - -

```rust
main!(|args: Cli| {
    for i in 0..args.amount {
        info!("try {}", i);
        let c: Commit = reqwest::get("https://whatthecommit.com/index.json")?.json()?;
        println!("{}) {}", i + 1, c.commit_message);
    }
});
```

## This is based on a quicli guide

> quicli is a neat little framework for quickly writing CLI applications in Rust.

<https://killercup.github.io/quicli/>


# Thanks!

- - -

## Any questions?

I am Pascal

{[twitter],[github]}.com/killercup

Slides will be available on Github
