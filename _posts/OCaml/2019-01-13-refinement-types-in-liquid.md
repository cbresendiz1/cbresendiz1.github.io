---
layout: post
---

Refinement type system are system that encode
predicate logic and other relevant logics into
the type system that allow additional deductions
about functions and data in the targeted language.

# Preventing Data Races
Concurrency is the dividing of work, such that
computation split into chunks and computing
within changing contexts. Concurrency was
a solution to running single threaded programs
without having to worry about another program
to terminate. One common example is the
execution of two tasks with two threads.

--- allocate a = 3 --- allocate b --- add a + b --->
--- allocate a = 4 --- access   b --- add a + b --->

In this case, we can see there a couple problems with
the thread of the program.

In this case, the results can be non-deterministic,
meaning the results may not be consistent. Some ways
to deal with this is to introduce locking mechanisms
and signals. This can be presented in the form of
semaphores or locks. Often types this is helpful,
but often fails to scale in large system if done
on a large data structures. One way to mitigate that
is to divide the data structure with partitions of
locked regions and lock-free data structures that use
atomic-modify

## Witness Feedback
## Sparse Regions
## Encoding the stack in Refinemen Types
