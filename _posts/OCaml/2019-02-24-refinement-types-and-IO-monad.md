---
layout: post
---

Monads are a common abstraction found in the Haskell and
strongly typed and expressive type systems. In GHC,
monads are, perhaps, one of the most influential ways
to develop software to minimize the loss of abstractions.
For example, purity a common theme in Haskell, using
immutable data structures, laziness, and composibility
to ensure the type system captures simple and important
invariants in the software.

# Refinement Types
Though Haskell's type system is pretty versatile and
helpful, there are a couple limitations that pretty
even more reasoning and guarantees for software.

Since not all functions are total, software architects
need to check, during runtime, whether a subset of the
behaviors are expected. One major thing is that the
type system does not guarantee invariants. This means
it does not enforce coding goals, resulting in
transforming software behavior. One way to
combat that is through creating proofs that guarantee
the program is consist. This is generally done
with language that have a proof system or an
encoding for proof systems. In that domain,
proofs are difficult to construct because there
needs to be a way to encode certain axioms,
lemmas, and forms of n-order logic. This
proves to be difficult because of the
amount of work for constructing the system to check
this. With refinement, the system adds predicate
to the reasoning of types and allows for
more in-depth analysis.

# LiquidHaskell: Refinements in a Lazy Language
LiquidHaskell verifier the inputted software satisfies
the constraints placed on it.

# LiquidHaskell and Monads
LiquidHaskell has been a big help in understanding
pure functions without any side-effects, but how does
one deal with monads or higher order abstractions
The problem appears in the form of data structures maintaining
references in the system.

I think you need to start experimenting with State Monad
and few other ones.

# Scotty and Reference
The problems monads and refinement types. There is just
too many abstractions to actually verify with the IO
monad. The one many thing is that typeclasses don't
enforce refinement. We have to continue creating structures
that are used for large datasets. We want to write like
we are in C, but we can't write in C. We want to write
in Java, but we can't write in Java.
