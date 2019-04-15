---
layout: post
---

# Here Are A Couple Questions

What exactly will you be focusing and what will you need to understand.

# Refinement Types

What are refinement types and liquid types and understanding the
refinement process.

Well, under LiquidHaskell, refinement types are just Liquid Types. Otherwise
known as Logically Quantified Types. Logically Quantified types is a
new method for static verification technique with automated deduction,
model checking, and type systems.

# Describing IO Monads

What is the IO Monad and why is Liquid Types limited?
Well, at its simplest form, Monads are typeclasses. It
needs to enforce some structure for writing software
and provide the correct functions of a set of functions.

# Creating a system with LiquidHaskell
## Purity and general refinements
What is purity in the context of Haskell. Purity means that a piece
of software does not have a side effects and is referentially
transparent.
## State
The most important idea is that Haskell does not "enforce"
purity. Haskell as a language simply does not include any notion of effects.
Base Haskell is exclusively about evaluation: going from an expression like
1 + 2 to 3. This has no provisions for side effects; they simply don't
make any sense in this context.

Side effects and mutations are not prohibited; they simply weren't added
in the first place.
