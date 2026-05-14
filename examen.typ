// ─── Paramètres globaux ───────────────────────────────────────────────────────
#set text(
  font: "Linux Libertine",
  size: 12pt,
  lang: "fr",
)

#set par(
  justify: true,
  leading: 0.65em,
  spacing: 1.5em,
  first-line-indent: 1.2em,
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
)


#show cite: it => text(fill: rgb("#2c5f8a"), size: 12pt, weight: "regular")[#it]

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


#page(
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  numbering: none,
)[
  #align(center)[


    #text(size: 11pt, weight: "bold")[IFOSUP Wavre]
    #v(0.3em)
    #text(size: 11pt, style: "italic")[Année académique 2025–2026]

    #v(1.5em)
    #line(length: 70%, stroke: 0.5pt)
    #v(3em)


    #text(size: 11pt, style: "italic")[Information et Communication professionnelle]
    #v(2em)


    #text(size: 20pt, weight: "bold")[
      Conflit en Ukraine : une guerre d'informations autant que militaire
    ]
    #v(0.8em)


    #text(size: 13pt, style: "italic", fill: rgb("#444444"))[
      Comment l'information est produite, transformée et instrumentalisée \
      dans le cadre du conflit russo-ukrainien
    ]

    #v(4em)
    #line(length: 70%, stroke: 0.5pt)
    #v(4em)

    #grid(
      columns: (1fr, 1fr),
      gutter: 2em,

      align()[
        #text(weight: "bold")[Auteurs] \
        Coisne Valentin \
        Van der Veen Georgé \
        #v(1em)
      ],
      align()[
        #text(weight: "bold")[Date de remise] \
        17 mai 2026 \
        #v(1em)
      ],
    )
  ]
]


#set page(
  numbering: "i",
  number-align: center,
  header: [],
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
)
#counter(page).update(1)

#outline(
  title: text(size: 13pt, weight: "bold")[Table des matières],
  indent: auto,
  depth: 2,
)
#pagebreak()


#set page(
  numbering: "-1-",
  number-align: center,
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  header: context {
    set text(size: 10pt, style: "italic")
    grid(
      columns: (1fr, 1fr),
      align(left)[Coisne V. & Van der Veen G.], align(right)[L'information dans la guerre russo-ukrainienne],
    )
    line(length: 100%, stroke: 0.4pt)
  },
)
#counter(page).update(1)

#set par(justify: true)


= Introduction

En février 2022, l'Europe a connu une escalade des tensions entre la Russie et l'Ukraine, aboutissant à l'invasion du territoire ukrainien par les forces russes. Bien que la propagande et la désinformation aient toujours occupé une place centrale dans les conflits armés, rarement une guerre d'une telle ampleur n'aura été aussi documentée en temps réel par ses propres acteurs. À travers les réseaux sociaux et les outils numériques, combattants et civils diffusent continuellement images, vidéos et témoignages du front. Cette surabondance d'informations complexifie le travail de vérification des sources, mais offre également de nouvelles possibilités d'analyse pour comprendre les enjeux du conflit et les stratégies de communication des différents acteurs impliqués.

Ce travail examine comment l'information est produite par les différents acteurs du conflit, comment elle est transformée et diffusée à travers les médias traditionnels et les réseaux sociaux, et comment elle est instrumentalisée à des fins de propagande et de manipulation de l'opinion publique. Pour illustrer ces dynamiques, une attention particulière sera portée à la bataille de Bakhmout (mai 2022 – mai 2023), théâtre d'une production de contenus soldatesques sans précédent sur des plateformes telles que Telegram et TikTok.

#pagebreak()

= Présentation du cas


= Acteurs impliqués


= Supports utilisés


= Analyse de cinq sources


= Analyse de la communication


= Enjeux et risques


= Conclusion

#rect(
  width: 100%,
  stroke: 0.5pt,
  inset: 1em,
  radius: 4pt,
)[
  #set par(justify: false)
  *Contribution personnelle et répartition des tâches* \
  \
  *Coisne Valentin :*  \
  \
  *Van der Veen Georgé :* \
  \
  *Utilisation de l'intelligence artificielle* \
  Claude — [Usage : Propositions de reformulations, amélioration du fichier Typst pour répondre aux exigences du document] \

]

#pagebreak()


#bibliography("src.bib", style: "apa", title: "Références")



