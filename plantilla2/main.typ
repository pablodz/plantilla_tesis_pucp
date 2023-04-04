#import "template.typ": project

#show: project.with(
  facultad: "FACULTAD [INGRESAR FACULTAD]",
  title: "Título de la tesis",
  subtitle:"TESIS PARA OPTAR POR EL TÍTULO PROFESIONAL DE [INGRESAR TÍTULO]",
  logo: "images/logopucp.png",
  authors: ("Nombre del(a) tesista según DNI","Nombre del(a) tesista 2 según DNI"),
  advisors:  ("Ing. Nombre del asesor según DNI","Ing. Nombre del asesor 2 según DNI"),
  date: "Marzo, 2023",
  city: "Lima",
  // Recomendaciones para el resumen:
  // 1. Desarrollar único párrafo.
  // 2. No incluir referencias.
  // 3. De 200 a 300 palabras.
  // 4. Escribir en tiempo verbal presente.
  // 5. Debe contener:
  //    - La justificación de la investigación
  //    - Los objetivos o hipótesis
  //    - La teoría o supuestos teóricos o metodológicos en la que se basa
  //    - El método o procedimiento de investigación (de ser necesario)
  //    - Los resultados o conclusiones (si es muy extenso, solo conclusion general)
  abstract: lorem(250), 
  introduction: lorem(60),
  gratitude: lorem(60),
) 

#align(center)[
  #set text(14pt)
  = Título del capítulo 1
] 

== Primera sección dentro de un capítulo
#lorem(25)

=== Primera subsección dentro de una sección
#lorem(40)
#parbreak()
#lorem(30)

== Segunda sección dentro de un capítulo
#lorem(150)
#parbreak()
#lorem(150)
#parbreak()
#lorem(150)
#parbreak()
#lorem(150)

=== Segunda subsección dentro de una sección
#lorem(50)

==== Segunda subsubsección dentro de una subsección
#lorem(50)

===== Segunda subsubsubsección dentro de una subsubsección
#lorem(50)

====== Segunda subsubsubsubsección dentro de una subsubsubsección
#lorem(50)


#figure(
  image("images/logopucp.png", width: 70%),
  caption: "Serious Business.",
)


#pagebreak()
#align(center)[
  #set text(14pt)
  = Título del capítulo 2
] 

#pagebreak()
#align(center)[
  #set text(14pt)
  = Título del capítulo 3
] 
#lorem(20)
#parbreak()
#lorem(500)

== Check out the Headers
#lorem(150)
#lorem(150)

=== Do you like them?
#lorem(300)

// Bibliography section
#pagebreak(weak: true)
#set page(header: [])
= Bibliography
#lorem(30)
