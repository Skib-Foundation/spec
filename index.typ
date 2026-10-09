#show: contents => {
  html.html({
    html.head({
      html.elem("link", attrs: (rel: "stylesheet", href: "style.css"))[]
    })
    html.elem("div", attrs: (class: "content"), {
      html.body(contents)
    })
  })
}

#title("Skib")

...
