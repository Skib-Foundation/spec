#show: contents => {
  html.html({
    html.head({
      html.elem("link", attrs: (rel: "stylesheet", href: "style.css"))[]
      html.elem("meta", attrs: (name: "viewport", content: "width=device-width, initial-scale=1"))
    })
    html.elem("div", attrs: (class: "content"), {
      html.body(contents)
    })
  })
}

#title("Skib")
#include "src/introduction.typ"
#include "src/types.typ"
#include "src/functions.typ"
#include "src/memory.typ"
#include "src/macros.typ"
...
