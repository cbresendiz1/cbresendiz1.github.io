---
layout: post
---

What is the point of the RGRef repository. For now, the purpose of the RGRef repository is to provide
a type system that expresses invariants about concurrent data structures using
methods that encapsulate the reasoning for concurrent programs, especially lock-free data structures.
In the original paper, reference immutability where introduced into the type system to reason about
read and write access, rely and guarantee logic, and provide constraints for working references.

One thing I should mention is that the previous version had a couple issues with concurrency due to
some initial assumptions of atomicity.
RGRef was born from the idea surrounding multi-threaded software, requiring writable and readable
reasoning for threads. In the original paper, the intention was to extend logic from concurrent
reasoning for reference immutability. The reason for that is because of the possible conflicts with
shared memory and multiple access when pointers were duplicated and adjusted with different properties.
As of the latest paper, some assumptions were further reinforced, which includes an encoding with
Liquid Haskell, which doesn't need the addition of modeling its memory

# Breaking down RGRef
In looking at the RGRef repository, the first thing that should draw your attention is the main
implementation of the rgref primitives. Under RG.hs, the RGRef reference provides the logic for
reasoning about references within the data structure/reference.

## RGRef: Data Structure
The RGRef data type is a logical wrapper over the IORef type. Having only one data element, the
translation from RGRef is fairly straight-forward. RGRef requires three predicates:
 * the predicate, which relates to the type
 * the rely, which talks about local invariants
 * the guarantee, which talks about promises outside the thread

These are meant to provide a system for reasoning through references. This doesn't help, unless the
reference's predicates are checked for correctness. This is where the assumes and functions below
play a role.

## newRGRef: Providing Behavioral Subtyping
With the RGRef constructed to assign a set of predicates. The functions and the parameters are
required to create a system for reasoning about references. In newRGRef, there are three logical
constraints that make of the reasoning about RGRef.

`{x :: a<p> |- a<r x> <: a<p>}`
`{x :: a<p> |- a<g x> <: a<r x>}`
`{x :: a<p> |- {v:a | v = x} <: a<g x>}`

What these logical constraints mean is:

`a<r x> is a subtype of a<p>, because of x :: a<p>`
`a<g x> is a subtype of a<p>, because of x :: a<p>`
`{v:a | v = x} <: a<g x>, because of x :: a<p>`

This means that the post type most satisfy all conditions of p,r,g to be considered the output of
newRGRef. One example is, coming from the notation (ref{T|P}[R,G])

 * `ref{Int | {v:Int | v > 0}}[{\x y -> x > y}|{\x y -> x > y}]`

In this case,

 * p is `{v:Int | v > 0}`
 * r is `{\x y -> x > y}`
 * g is `{\x y -> x > y}`

, in which the data structure most satisfy all predicates/constraints. In addition, there is a
precondition that the value entered must satisfy the condition of the `<p>` predicate.
