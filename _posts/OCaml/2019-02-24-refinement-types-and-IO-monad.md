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
invariants in the software with typeclasses that remove
unknown and effectful computations.

# The Limitation of Type Systems and Proofs
Though Haskell's type system is pretty versatile and
helpful, there are a couple limitations that for
constructing proper reasoning and guarantees for software.


One issue with type systems are that they do not guarantee
invariants, unless the user is aware and apply measures for
ensuring the invariants hold. This means
it does not enforce coding goals, resulting in
transforming software behavior, which could result in
off-by one errors or business logic errors. One way to
combat that is through creating proofs that guarantees
the program is consist. This is generally done
with language that have a proof system or an
encoding for proof systems or with a large number
of tests that are meant to inspire confidence in
development. For this example, proof systems will
be considered, as tests are beyond this scope.
In that domain, proofs, though helpful, often
need domain knowledge, a knowledge of valid proofs, and
a cycle of development between the verifier and developer.
This would normally be done by encoding certain axioms,
lemmas, or forms of n-order logic. This
proves to be difficult because of the
amount of work for constructing the system to check
this.
