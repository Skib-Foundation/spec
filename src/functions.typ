= Functions and Syntax

== Application and Currying
Function application uses explicit parentheses: `f(a, b, c)`.
- *No Space Application:* Haskell-style space application (`f a b c`) is rejected.
- *No Auto-Currying:* Automatic currying creates implicit closures and causes severe performance drops due to hidden heap allocations.
- *Custom Operators:* The language supports custom user-defined operators (which act as standard functions).

== Pipeline Operator
To prevent deep nesting of parentheses `((()))` when calling multiple functions, Skib provides a pipeline operator `|>`.

```skib
skolemization(x)
  |> skibidization(4)
  |> kekszation(5)
```

== Tail Call Optimization (TCO)
Tail recursion must be optimized into a loop to prevent stack overflows and save stack frame allocations. A specific keyword or annotation (e.g., `tailcall`) will be required so the compiler can throw an error if the optimization is mathematically impossible in a given context.

#rect(fill: rgb("fff3cd"), stroke: rgb("ffe69c"), width: 100%, inset: 1em)[
  *TODO: Unresolved Function Issues*
  1. *Closures and Environment Capture:* If auto-currying is dead, what is the exact syntax for closures `\x -> x + y`?
  2. *Closure Allocation:* If a closure captures a local variable, does it live on the stack or the heap? How is the allocator passed to it without breaking the "explicit memory" rule?
]
