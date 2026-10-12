= Memory Management

Skib utilizes a purely manual memory management model. There is no affine type system, no move semantics by default, and no borrow checker. 

== Allocators and `defer`
Memory is controlled using Zig-style allocators. Standard `malloc` is considered too slow and error-prone; instead, users pass explicit `Allocator` or `Arena` instances.
To clean up resources at the end of a scope, Skib uses the `defer` keyword.

```skib
let arena = Arena.init();
defer arena.deinit();
```

== Smart Pointers
The standard library will provide explicit smart pointers (e.g., similar to `Box` or `Unique`). Since there is no borrow checker, ownership logic is maintained by explicit traits (typeclasses) handling `deinit` when the pointer is explicitly dropped or goes out of scope.

== Implicit Parameters (Contexts)
To avoid threading an `Allocator` through every single function call manually, Skib allows strictly scoped implicit parameters.
- Implicits are resolved via the calling function's signature.
- Searching the global scope or class scope for implicits (Scala-style) is *forbidden*.
- Implicits are declared at the end of a function call using a specific keyword (e.g., `ex`), preventing ambiguity with regular arguments.

```skib
// Overriding the implicit allocator explicitly at the call site
skolemization(x, ex alloc = &myAlloc)
```

#rect(fill: rgb("fff3cd"), stroke: rgb("ffe69c"), width: 100%, inset: 1em)[
  *TODO: Unresolved Memory Issues*
  1. *Move Semantics:* Can a smart pointer be safely returned from a function without triggering C++-style rule-of-3 overhead?
  2. *Duplicate Implicit Types:* If a function requires two different allocators (e.g., `scratch: &Allocator`, `perm: &Allocator`), how does the implicit resolution distinguish between them without relying purely on parameter names?
]
