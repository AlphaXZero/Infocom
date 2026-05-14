// ─── Paramètres globaux ───────────────────────────────────────────────────────
#set text(
  font: "Libertinus Serif",
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

#show heading.where(level: 3): it => {
  v(0.7em)
  text(size: 11pt, weight: "bold")[
    #counter(heading).display("I.1.1.") #it.body
  ]
  v(0.2em)
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

Ce travail examinera comment l'information est produite par les différents acteurs du conflit, comment elle est transformée et diffusée à travers les médias traditionnels et les réseaux sociaux, et comment elle est instrumentalisée à des fins de propagande et de manipulation de l'opinion publique.#text(red)[modifier en fonction du développement]

#pagebreak()

= Présentation du sujet et du contexte
== Acteurs impliqués
=== Russie

La Russie occupe une place centrale dans le conflit, non seulement sur le plan militaire, mais également dans la gestion et la diffusion de l’information. Depuis le début de l’invasion en février 2022, les autorités russes ont mis en place une communication fortement contrôlée visant à justifier l’intervention militaire auprès de la population russe et à influencer l’opinion publique internationale. Le gouvernement russe qualifie notamment la guerre “d’opération militaire spéciale”, afin d’éviter l’utilisation du terme “guerre”, considéré comme politiquement sensible à l’intérieur du pays.

Les médias d’État russes, tels que RT et Sputnik, participent activement à cette stratégie de communication. Ils diffusent des contenus favorables au Kremlin et mettent en avant un discours dénonçant l’OTAN et les pays occidentaux. En parallèle, plusieurs lois ont été adoptées afin de limiter les critiques contre l’armée russe et de contrôler les informations diffusées sur le conflit. Les réseaux sociaux jouent également un rôle important dans cette stratégie, notamment Telegram, largement utilisé pour diffuser des messages officiels, des vidéos militaires et des contenus de propagande.

=== Ukraine

Face à la puissance militaire russe, l’Ukraine a rapidement développé une stratégie de communication moderne et particulièrement efficace. Le président Volodymyr Zelensky utilise régulièrement les réseaux sociaux pour communiquer directement avec la population ukrainienne et avec les pays étrangers. À travers des vidéos publiées quotidiennement, il cherche à maintenir le moral de la population, dénoncer les attaques russes et obtenir un soutien militaire et humanitaire international.

L’Ukraine utilise également internet comme un outil de mobilisation mondiale. Les autorités ukrainiennes diffusent de nombreuses images et vidéos montrant les destructions causées par les combats et les conséquences humanitaires de la guerre. Cette communication vise à sensibiliser l’opinion publique internationale et à renforcer le soutien des pays occidentaux. Les réseaux sociaux comme X, Telegram, TikTok ou YouTube sont devenus des outils essentiels dans cette stratégie numérique.

=== Les médias traditionnels

Les médias traditionnels jouent un rôle essentiel dans la diffusion des informations liées au conflit. Les chaînes de télévision, les journaux et les agences de presse permettent au public d’obtenir des informations sur l’évolution de la guerre, les décisions politiques ou encore les conséquences humanitaires du conflit. Des médias internationaux comme BBC, CNN, France 24 ou Al Jazeera disposent notamment de correspondants présents sur le terrain.

Cependant, le travail journalistique dans une zone de guerre reste particulièrement difficile. Les journalistes doivent vérifier les informations provenant de multiples sources tout en faisant face aux risques liés aux combats et à la désinformation. Certaines images ou vidéos circulant sur internet peuvent être sorties de leur contexte, modifiées ou totalement fausses. Les médias doivent donc effectuer un important travail de vérification avant publication afin d’éviter la diffusion d’informations erronées.

=== Les réseaux sociaux et plateformes numériques

Les réseaux sociaux occupent une place centrale dans le conflit russo-ukrainien. Contrairement aux guerres précédentes, les informations circulent aujourd’hui presque instantanément grâce aux smartphones et aux plateformes numériques. Des applications comme Telegram, X, TikTok, Facebook ou YouTube permettent la diffusion rapide de vidéos, de photos et de témoignages provenant directement du terrain.

Cette rapidité de diffusion présente des avantages, mais également de nombreux risques. Les réseaux sociaux facilitent la propagation de désinformation, de propagande et de manipulations visuelles. Certaines vidéos peuvent être sorties de leur contexte ou provenir d’anciens conflits tout en étant présentées comme récentes. Les algorithmes des plateformes favorisent également les contenus les plus émotionnels ou choquants, ce qui peut influencer fortement l’opinion publique.

En parallèle, ces plateformes permettent aussi l’émergence de communautés spécialisées dans la vérification des informations, notamment dans le domaine de l’OSINT (Open Source Intelligence), qui consiste à analyser des données publiques afin de confirmer ou d’infirmer certaines informations liées au conflit.

=== Les populations civiles

Les populations civiles jouent également un rôle important dans la production et la diffusion de l’information. Grâce aux smartphones et aux réseaux sociaux, de nombreux habitants documentent directement les événements auxquels ils assistent. Ils publient des photos, vidéos et témoignages montrant les bombardements, les déplacements de population ou les destructions provoquées par la guerre.

Ces contenus permettent parfois d’obtenir des informations rapidement, avant même l’arrivée des journalistes sur place. Cependant, ils posent également des problèmes de fiabilité et de vérification. Certaines vidéos peuvent être incomplètes, manipulées ou interprétées de manière incorrecte. Malgré cela, les civils participent aujourd’hui activement à la documentation du conflit et influencent la perception internationale de la guerre.

=== Les organisations internationales

Les organisations internationales interviennent également dans le conflit à travers leur communication officielle et leurs actions diplomatiques. L’Organisation des Nations unies (ONU), l’Organisation du traité de l’Atlantique nord (OTAN) ainsi que l’Union européenne prennent régulièrement position sur les événements et diffusent des communiqués concernant la situation militaire, humanitaire et politique.

Ces organisations jouent un rôle important dans la diffusion d’informations officielles et dans la coordination de l’aide humanitaire destinée aux populations touchées par le conflit. Elles participent également aux discussions diplomatiques et aux tentatives de résolution du conflit. Leur communication vise généralement à informer le public international, condamner certaines actions militaires et soutenir les populations civiles affectées par la guerre.

== Contexte historique
Le conflit trouve son origine en septembre 2013, lorsque le président ukrainien Ianoukovitch décide de se retirer unilatéralement d'un accord d'association avec l'Union européenne. En réaction, des manifestations s'organisent sur la place Maïdan à Kiev. La répression policière est féroce, l'escalade de la violence fait plusieurs morts, et Ianoukovitch finit par fuir le pays. La Russie réagit immédiatement : elle annexe illégalement la Crimée et déclenche un conflit dans l'est ukrainien en soutenant des séparatistes prorusses dans le Donbass. Des accords de cessez-le-feu sont négociés à Minsk en 2014 et 2015, mais les violations sont constantes, et les ministres du G7 appellent encore en février 2022 la Russie à respecter ses engagements et à procéder à une désescalade

Ces appels restent sans effet. Fin 2021, la Russie massifie ses troupes à la frontière ukrainienne, impliquant plus de 150 000 soldats. Le 21 février 2022, Poutine reconnaît unilatéralement l'indépendance des républiques séparatistes de Donetsk et Louhansk et envoie des soldats dans la région. Trois jours plus tard, le 24 février, il lance une invasion militaire massive sur l'ensemble du territoire ukrainien. Ce basculement fait passer un conflit régional gelé depuis huit ans dans une toute autre dimension, aux conséquences militaires, énergétiques, humanitaires et économiques qui dépassent largement les deux belligérants.

== Supports utilisés
Comme mentionné précedemment, la guerre en Ukraine est un conflit particulièrement documenté, avec une grande quantité d'informations produites et diffusées par les différents acteurs du conflit. Les médias traditionnels, tels que les chaînes de télévision et les journaux, jouent un rôle important dans la diffusion de l'information, mais les réseaux sociaux sont également devenus des plateformes clés pour la diffusion d'images, de vidéos et de témoignages du front. Les combattants et les civils utilisent ces plateformes pour partager leur expérience du conflit.#text(red)[à modifier ? pour dire les supports qu'on utilise]



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
  ChatGPT — [Usage : Recherche de sources]

]

#pagebreak()


#bibliography("src.bib", style: "apa", title: "Références")



