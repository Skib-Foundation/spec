= Introduction

Skib is a systems functional programming language. The core ideology of Skib is predictability, simple rules, and the absence of implicit behavior (acting as an anti-C++ approach). The language provides high-level abstractions (Algebraic Data Types, Pattern Matching, Typeclasses) while maintaining total manual control over memory and hardware resources (inspired by Zig).

== Skib and SkibCore
The compilation pipeline is conceptually divided into two tiers:
1. *Skib:* The full-featured language containing implicits, procedural macros, and syntactic sugar.
2. *SkibCore:* A minimalist intermediate representation (IR). All complex Skib features are desugared into SkibCore, which operates strictly on ADTs, structs, functions, and explicit memory allocations. SkibCore is then compiled into ANSI C98 or LLVM IR.

== Core Principles
- *No Garbage Collector (GC):* All memory is managed manually.
- *No Borrow Checker:* The compiler does not track reference lifetimes (unlike Rust). Avoiding memory leaks and dangling pointers is solely the programmer's responsibility.
- *Explicit over Implicit:* The language rejects features like implicit function currying and silent C++-style constructor overloads, which obscure performance costs and trigger hidden heap allocations.
