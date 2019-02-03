---
layout: post
---

On understanding refinement types, there seems to be
a lot of material that go into using type systems
to create reasonable refinements that provide proofs
and inferences to improve reasoning about programs.

For example, an often cited integers, division
relies on the expectation that all numbers
are divisible and terminate, but this is not
possible with a zero in the denominator.
This would, normally, lead to a run-time error
that would occur once that section is executed.

There have been a couple ways to mitigate this
problem with contracts, dependent types,
higher kinded types. But those often
require a more complex and sophisticated
type system to provide warning. Refinement types
are a different solution to providing source
code that can guarantee invariants without
needing to dive into the deep end.
