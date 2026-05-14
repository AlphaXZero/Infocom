// ─── Paramètres globaux ───────────────────────────────────────────────────────
#set text(
  font: "Linux Libertine",
  size: 12pt,
  lang: "fr",
)

#set par(
  justify: true,
  leading: 1em, // Interligne 1.5 (académique standard)
  spacing: 1.5em, // Espace entre les paragraphes
  first-line-indent: 1.2em, // Alinéa de première ligne
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 2.5cm),
)

// ─── Style des citations (APA) ────────────────────────────────────────────────
#show cite: it => text(fill: rgb("#2c5f8a"), size: 10pt, weight: "regular")[#it]

// ─── Style des titres ─────────────────────────────────────────────────────────
#set heading(numbering: "I.1.")

#show heading.where(level: 1): it => {
  v(1.5em)
  text(size: 13pt, weight: "bold")[#counter(heading).display("I.") #it.body]
  v(0.5em)
}

#show heading.where(level: 2): it => {
  v(1em)
  text(size: 12pt, weight: "bold", style: "italic")[#counter(heading).display("I.1.") #it.body]
  v(0.3em)
}

// ─── Page de titre ────────────────────────────────────────────────────────────
#page(margin: (top: 3cm, bottom: 3cm, left: 3cm, right: 2.5cm))[
  #align(center)[
    #text(size: 11pt, style: "italic")[Examen Information et Communication professionnelle]
    #v(1em)
    #line(length: 60%, stroke: 0.5pt)
    #v(3em)

    #text(size: 22pt, weight: "bold")[
      Conflit en Ukraine: une guerre d'informations autant que militaire
    ]
    #v(0.8em)
    #text(size: 14pt, style: "italic", fill: rgb("#444444"))[
      Comment l'information est produite, transformée et instrumentalisée dans le cadre du conflit russo-ukrainien
    ]

    #v(3em)
    #line(length: 60%, stroke: 0.5pt)
    #v(4em)


    #v(4em)

    #grid(
      columns: (1fr, 1fr),
      gutter: 1em,
      align(left)[
        #text(weight: "bold")[Auteurs] \
        Coisne Valentin,\
        Van der Veen Georgé

      ],
      align(left)[
        #text(weight: "bold")[Date] \
        Mai 2026
      ],
    )
  ]
]

// ─── Table des matières ───────────────────────────────────────────────────────
#set page(
  numbering: "i",
  number-align: center,
  header: [],
)
#counter(page).update(1)

#outline(
  title: [Table des matières],
  indent: auto,
  depth: 2,
)
#pagebreak()

// ─── Corps du document ────────────────────────────────────────────────────────
#set page(
  numbering: "-1-",
  number-align: center,
  header: context {
    set text(size: 10pt, style: "italic")
    grid(
      columns: (1fr, 1fr),
      align(left)[Van der Veen Georgé, Coisne Valentin], align(right)[L'information dans la guerre russo-ukrainienne],
    )
    line(length: 100%, stroke: 0.4pt)
  },
)
#counter(page).update(1)

= Introduction
En février 2022, l’Europe a connu une escalade des tensions entre la Russie et l’Ukraine, aboutissant à l’invasion du territoire ukrainien par les forces russes. Bien que la propagande et la désinformation aient toujours occupé une place centrale dans les conflits armés, rarement une guerre d’une telle ampleur aura été autant documentée en temps réel par ses propres acteurs. À travers les réseaux sociaux et les outils numériques, combattants et civils diffusent continuellement images, vidéos et témoignages du front. Cette surabondance d’informations complexifie le travail de vérification des sources, mais offre également de nouvelles possibilités d’analyse pour comprendre les enjeux du conflit et les stratégies de communication des différents acteurs impliqués.

--- Nous verons dans ce travail comment l'information est produite par les différents acteurs du conflit, comment elle est transformée et diffusée à travers les médias et les réseaux sociaux, et comment elle est instrumentalisée à des fins de propagande et de manipulation de l'opinion publique.--- #text(red)[) modifier peut-être]



#pagebreak()
#bibliography("src.bib", style: "apa", title: "Références")
