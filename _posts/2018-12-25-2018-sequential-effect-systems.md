---
layout: post
---

In computing, an effect system is a formal system which describes the computational effects
of computer programs, such as side effects. An effect system can be used to provide a
compile-time check of the possible effects of the program. The effect system extends
the notion of type to have an "effect" component, which comprises an effect kind and a region.
The effect kind describes what is being done, and the region describes with what it is
being done. An effect system is typically an extension of a type system. The term
"type and effect system" is sometimes used in this case. Often, a type of a value is denoted
together with its effect as type ! effect, where the type component and the effect component
mention certain regions in which the cell resides.

Some examples of the behavior that can be described by effect systems include:
 * Reading, writing, and allocating memory
 * working with resources
 * control transfer with continuations with long jumps
 * java checked exceptions are an example of an effect system

# Type and Effect Systems [1999]
A natural extension of type checking techniques is to enrich the types with annotations and
effects that further describe intensional aspects of the dynamic behavior

"We shall suppose that a typed programming language is given. In soft typing all programs
can be typed because a "top" type can be used in the absence of meaningful "ordinary" types;
this perspective is similar to that of the flow based approach and is useful

The flow based approach includes the traditional data flow analysis techniques for mainly
imperative and object-oriented languages.

## Constraint based control flow analysis Techniques
Inference based approach includes general logical techniques touching upon program
verification and model checking
