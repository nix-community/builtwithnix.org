## Build software only once

nix is a software build tool that works across languages and creates reliable builds.

[[Get Nix](https://nixos.org/nix/)]

## Why Nix?

**One tool, many languages**
With today’s polyglot environments, each language has it’s own way of building and testing. Encourage cross-team development by providing a single way of building everything.

**Works on my machine, works in CI, works in production**
Nix controls all dependencies precisely and sandboxes all of the builds. Save debugging time by making it easy to reproduce CI or production errors locally. Never think about cache invalidation again.

**From zero to cloud**
Use the same tool to build one project, hundred of projects, configure machines and deploy to the cloud. Thanks to Nix’s extensible language it’s easy to compose parts together with little overhead.

**Pull from a rich package set**

Take advantage of more than 10000 predefined build recipes, including security updates.

**Never recompile twice**
Nix allows to easily share build results across machines. If the CI has built the project, developers or servers can download the build results instead of re-building the same thing.

## Trusted by industry leaders
- Target
- Tumblr
- Tweag
- …

TODO: add testimonials


## Get started

TODO: missing a few paragraphs here


## Projects built with Nix

Curated list of projects built with Nix

- https://github.com/nix-community/todomvc-nix

**Is your project missing from the list?**
Share the love by embedding the badge into your project’s README:

**Markdown**

```md
[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)
```

**reStructuredText**

```rst
.. image:: https://builtwithnix.org/badge.svg :alt: built with nix :target: https://builtwithnix.org
```

**AsciiDoc**

```asciidoc
image:https://builtwithnix.org/badge.svg["built with nix", link="https://builtwithnix.org/"]
```

fork https://github.com/nix-community/builtwithnix.org and submit a pull-request to list your project
