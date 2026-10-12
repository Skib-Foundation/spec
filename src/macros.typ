= Metaprogramming

Skib requires a powerful metaprogramming system primarily to handle automatic code generation for ADTs and Structs (e.g., deriving `Serialize`, `Eq`, `Show`).

== Procedural Macros
Macros operate as `Tokens -> Tokens` transformations (similar to Rust). They are executed lexically before type inference.

```rust
@derive(Serialize)
struct S {
  @serde(skip)
  hidden: Int
}
```

#rect(fill: rgb("fff3cd"), stroke: rgb("ffe69c"), width: 100%, inset: 1em)[
  *TODO: Unresolved Metaprogramming Issues*
  1. *Tokens vs. Type Information:* A raw `Tokens -> Tokens` macro cannot query type information (since inference hasn't happened yet). Should Skib use Zig-style `comptime` reflection instead to loop through struct fields dynamically, or stick to raw token parsing?
  2. *Macro Cycles:* If a macro requires type info to expand, and the type inference requires the macro to expand first, how does the compiler break the cyclic dependency?
]
