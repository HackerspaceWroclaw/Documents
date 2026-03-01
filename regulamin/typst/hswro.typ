#let template(
  document_date: datetime.today(),
  city: "Wrocław",
  page_type: "a4",
  header_text: "",
  heading_vspace: 10%,
  doc
) = {
set page(
  page_type,
  margin: (top: 150pt),
  header: [
        #align(bottom)[#box(height: 30pt ,image("HSWRO-logo-mono.svg")) #h(1fr) #if document_date != none [#city, #document_date.display()] #header_text]
    #rect(
      height: 1pt,
      width: 100%, 
      fill: black)
  ],
)
show heading.where(level: 1): htext => [
  #set align(center)
  #htext
  #v(heading_vspace)
]
doc
}


#let dotted = tiling(size: (3pt, 6pt))[
  #place(rect(width: 50%, height: 100%, fill: black))
]

#let dotline(width: 100%) = [#rect(height: 0.5pt, width: width, fill: dotted)]

#let signatures(who) = [#v(60pt)#columns(who.len())[
  #(who.map(name => [#dotline()#name.name\ #name.position]).join(colbreak()))
]]
