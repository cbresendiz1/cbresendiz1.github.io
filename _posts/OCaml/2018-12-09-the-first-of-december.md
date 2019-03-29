---
layout: post
---

This section is meant to provide a background on the material of refinement type systems and how
the refinement types can be better understood to improve source code. So far, there are plenty of
tools that can use refinements to an existing type system and utilize the compiler's steps and
process to introduce more in depth analysis of the source code.

# The Definition of Refinement

In wikipedia, the definition of refinement, in the context of computer science, refers to a term
that loosely encompasses various approaches for producing correct computer programs and simplifying
existing programs to enable their formal verification.

## Various Forms of Refinements

Though refinements are meant to provide improved reasoning about software, there are a couple
ways to apply refinements. Since refinements can apply to all kinds of applications, the
way functions, guarantees, and invariants are applied require some level of distinctions.
In looking into refinements, here are a couple existing refinement methods.

 * Program Refinement
 * Data Refinement
 * Refinement Calculus
 * Refinement Types

# Various Methods of Refinements
## Program Refinement
In formal methods, program refinement is the verifiable transformation of an abstract (high-level)
formal specification into a concrete (low-level) executable program.

Stepwise refinement allows this process to be done in stages. Logically, refinement normally involves
implication, but there can be additional complications.
## Data Refinement
Data refinement is a term referring to a refinement, in which abstract data models are converted
into implementable data structures. This could be applied for sets.
An operation refinement converts a specification of an operation on a system into an
implementable program.

Reification and retrenchment are mentioned
## Refinement Calculus
Refinement Calculus is a formal system (inspired from Hoare logic) that promotes program refinement.
The FermaT Transformation System is an industrial-strength implementation of refinement.
The B-Method is another formal method that extends refinement calculus with a component language.
## Refinement Types
in type theory, a refinement type is a type endowed with a predicate which is assumed to hold
for any element of the refined type. Refinement types can express preconditions when used as
function arguments or postconditions when used as return types.

Refinement types are thus related to behavioral subtyping

# Behavioral Subtyping
Substitutability is a principle in object-oriented programming stating that, in a computer program,
if S is a subtype of Ty, then objects of type T may be replaced with objects of type S.
