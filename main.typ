#set text(lang: "en", font: "New Computer Modern", size: 11pt)
#set page(paper: "a4", numbering: "1", margin: (x: 2.5cm, y: 2.5cm))
#set heading(numbering: "1.1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[Skib Language Specification]
  #v(1em)
  #text(size: 14pt)[ISO Skib DRAFT 1987]
  #v(2em)
  #text(size: 12pt, fill: luma(100))[Current Status: Kanban Draft / WIP]
]

#v(2em)
#outline(depth: 3, indent: auto)
#pagebreak()

#include "src/introduction.typ"
#include "src/types.typ"
#include "src/functions.typ"
#include "src/memory.typ"
#include "src/macros.typ"
