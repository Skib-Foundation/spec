= Type System

The Skib type system is primarily structural and nominal, heavily featuring Algebraic Data Types (ADTs) and structs, with ad-hoc polymorphism achieved through typeclasses.

== Core Constructs
- *Structs:* Standard product types used for data grouping.
- *Algebraic Data Types (ADTs):* Sum types with full Pattern Matching support.

== Type Inference
Skib implements *local type inference*.
- Global type inference (e.g., global Hindley-Milner) is strictly *rejected* because it leads to confusing error messages in unrelated parts of the codebase.
- Function signatures (including generics) must be explicitly annotated.
- Inside a function body, the types of variable bindings (`let`) are inferred top-down.

== Typeclasses (Traits)
Typeclasses are used for ad-hoc polymorphism. They allow defining shared behavior for types (e.g., custom allocators, resource release via `deinit`, or smart pointer logic inside the standard library).

#rect(fill: rgb("fff3cd"), stroke: rgb("ffe69c"), width: 100%, inset: 1em)[
  *TODO: Unresolved Type System Issues*
  1. *Higher-Kinded Types (HKT):* Should the language support HKT (`* -> *`) for typeclasses to represent concepts like Monads? (Debated).
  2. *Recursive ADTs:* Since memory is manual and types are unboxed by default, how are recursive ADTs constructed? Do they require an explicit `Ptr<T>` wrapper inside the variant definition?
  3. *Subtyping:* Structural subtyping was mentioned but currently considered too complex for the systems programming paradigm.
]
