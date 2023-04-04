#let project(
  facultad: "",
  title: "",
  subtitle: "",
  logo: none,
  authors: (),
  advisors: (),
  date:"",
  city:"",
  abstract: [],
  introduction: [],
  gratitude: [],
  body
) = {
  // Set the document's basic properties.
  set document(title: title)
  set text(lang: "es")
  show math.equation: set text(weight: 400)
  set heading(numbering: "1.1")
  set par(justify: true)

  // Title page.
  // v(0.25fr)
  align(center)[
    #text(1.8em, weight: 600, "PONTIFIA UNIVERSIDAD CATÓLICA DEL PERÚ")
    #v(0.2em)
    #text(1.8em, weight: 600, facultad)
    #v(2em)
    #align(center, image(logo, width: 60%))
    #v(2em)
    #text(1.5em, weight: 600, title)
    #v(1em)
    #text(1.5em, weight: 600, subtitle)
    #v(5em)
    #text(1.5em, weight: 600, "AUTOR")
    #v(0.5em)
    #pad(
      grid(
        columns: (1fr),
        gutter: 1em,
        ..authors.map(author => align(center)[
          #text(1.5em, author)
        ]),
      ),
    ) 
    #v(2em)
    #text(1.5em, weight: 600, "ASESOR")
    #v(0.5em)
    #pad(
      grid(
        columns: (1fr),
        gutter: 1em,
        ..advisors.map(advisor => align(center)[
            #text(1.5em, advisor)
          ],
        ),
      ),
    )
    #v(0.25fr)
    #text(1.5em, weight: 600, date)
    #v(0.5em)
    #text(1.5em, weight: 600, city)
  ]

  pagebreak()

  // Abstract page.
  set page(numbering: "I", number-align: center)
  v(1fr)
  align(center)[
    #heading(
      outlined: false,
      numbering: none,
      text(1em, smallcaps[Resumen]),
    )
  ]
  v(2em)
  abstract
  v(1.618fr)
  counter(page).update(1)
  pagebreak()

  // Introduction page.
  align(center)[
    #heading(
      outlined: false,
      numbering: none,
      text(1em, smallcaps[Introducción]),
    )
  ]
  v(2em)
  introduction
  pagebreak()

  // Gratitude page.
  align(center)[
    #heading(
      outlined: false,
      numbering: none,
      text(1em, smallcaps[Agradecimientos]),
    )
  ]
  v(2em)
  gratitude
  pagebreak()



  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()


  // Main body.
  set page(numbering: "1", number-align: center)
  set par(first-line-indent: 20pt)
  // set page(header: getHeader())
  counter(page).update(1)
  body
}
