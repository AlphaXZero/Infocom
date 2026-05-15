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

Ce travail examinera comment l'information est produite par les différents acteurs du conflit, comment elle est transformée et diffusée à travers les médias traditionnels et les réseaux sociaux, et comment elle est instrumentalisée à des fins de propagande et de manipulation de l'opinion publique.#text(red)[modifier en fonction du développement, pouruqoi ça nous semble important , bcp de sources donc toruver les vrais]


#pagebreak()

= Présentation du sujet et du contexte
== Acteurs impliqués

== Contexte historique
Le conflit trouve son origine en septembre 2013, lorsque le président ukrainien Viktor Ianoukovitch décide de suspendre la signature d’un accord d’association avec l’Union européenne. En réaction, des manifestations pro-européennes s’organisent sur la place Maïdan à Kiev. La répression policière entraîne une escalade de la violence qui fait plusieurs morts, avant que Ianoukovitch ne fuie le pays en février 2014.

La Russie réagit rapidement en annexant la Crimée, une décision largement condamnée par la communauté internationale. Dans le même temps, un conflit armé éclate dans l’est de l’Ukraine, dans la région du Donbass, où des groupes séparatistes prorusses reçoivent un soutien russe selon plusieurs sources occidentales et enquêtes internationales. Des accords de cessez-le-feu sont négociés à Minsk en 2014 et 2015, mais les violations restent fréquentes et les tensions persistent durant les années suivantes.

Fin 2021, la Russie concentre plus de 150 000 soldats à la frontière ukrainienne. Le 21 février 2022, Vladimir Poutine reconnaît unilatéralement l’indépendance des républiques séparatistes de Donetsk et de Louhansk et ordonne l’envoi de troupes dans la région. Trois jours plus tard, le 24 février 2022, la Russie lance une invasion militaire à grande échelle de l’Ukraine. Ce basculement transforme un conflit régional gelé depuis plusieurs années en une guerre aux conséquences militaires, humanitaires, énergétiques et économiques mondiales.

Ce résumé du contexte historique permet de mieux comprendre les origines du conflit. Il s’appuie cependant principalement sur des sources occidentales @beauchemin_pumont_2022 et @huri_russo_ukrainian_war_background et ne reflète donc pas nécessairement la narration russe des événements. Il est important de garder à l’esprit que les différentes parties impliquées dans le conflit défendent des récits divergents, dont l’analyse est essentielle pour comprendre les enjeux de la guerre de l’information qui accompagne le conflit militaire.
== Supports utilisés

= Analyse de cinq sources
== Source 1 : Discours de V. Poutine sur l'intervention militaire en Ukraine

=== Présentation

Le 24 février 2022, le président russe Vladimir Poutine a prononcé un discours @putin2022address dans lequel il annonce le lancement d'une « opération militaire spéciale » en Ukraine. Il accuse les pays occidentaux, et notamment l’OTAN, de s’étendre dangereusement vers l’est et de menacer la sécurité de la Russie en installant de plus en plus d’infrastructures militaires à proximité de ses frontières.

Dans son allocution, Poutine affirme que les États-Unis et leurs alliés ignorent depuis plusieurs années les demandes de sécurité formulées par la Russie. Il présente également l’Ukraine comme un État influencé par l’Occident et considère que le gouvernement ukrainien représente une menace pour la Russie ainsi que pour les populations russophones du Donbass.

Le président russe justifie aussi l’intervention militaire par la volonté de protéger les habitants des républiques séparatistes de Donetsk et de Louhansk, qu’il affirme victimes de violences depuis 2014. Il déclare que les objectifs de l’opération sont de « démilitariser » et de « dénazifier » l’Ukraine, tout en assurant que la Russie ne cherche pas à occuper le territoire ukrainien.

Enfin, Poutine adresse un avertissement aux pays étrangers en affirmant que toute tentative d’intervention contre la Russie entraînera une réponse immédiate et des conséquences importantes.

=== Analyse de la communication

On constate clairement que le président russe cherche à polariser les camps en présentant la Russie comme une nation ouverte au dialogue mais victime d’une menace occidentale. Il affirme par exemple que « nous avons patiemment essayé de conclure une entente avec les dirigeants de l’OTAN ». À l’inverse, les dirigeants occidentaux sont présentés comme « irresponsables », leurs réponses étant décrites comme des « mensonges », du « cynisme » ou encore des « tentatives de pressions ou de chantage ». Cette opposition permet de construire un récit opposant une Russie défensive à un Occident agressif.

Poutine cherche également à renforcer le patriotisme russe en mobilisant la mémoire historique du pays. Il évoque notamment la Seconde Guerre mondiale lorsqu’il déclare : « Notre pays n'était pas préparé à contrer l'invasion de l'Allemagne nazie, qui a attaqué notre mère patrie le 22 juin 1941, sans déclarer la guerre. Le pays a arrêté l'ennemi et a été jusqu'à le défaire mais à un coût énorme ». Cette référence historique permet d’associer implicitement les adversaires actuels à une menace comparable au nazisme et contribue à justifier moralement l’intervention militaire. L’utilisation du terme « dénazification » participe également à cette stratégie de communication et contribue à déshumaniser le camp opposé.

Dans la continuité de ses critiques envers l’Occident, Poutine évoque également les guerres menées en Libye, en Syrie et en Irak. Selon lui, ces interventions, qu’il qualifie d’« utilisation illégale de forces armées », n’auraient conduit qu’à des « tragédies » et à « un grand exode du Moyen-Orient et d’Afrique vers l’Europe ». Cette comparaison permet de présenter la Russie comme plus légitime moralement que les puissances occidentales et de renforcer l’idée d’une menace pesant sur sa sécurité. Le discours repose ainsi sur une logique de guerre préventive : la Russie serait contrainte d’agir avant de subir elle-même une attaque ou une déstabilisation.

On constate également ce que plusieurs observateurs qualifient d’inversion du récit ou d’omission d’une partie des événements afin d’adapter la narration du conflit. Poutine affirme par exemple que « nous avons tout fait pour régler la situation avec des moyens diplomatiques pacifiques ». Pourtant, plusieurs sources occidentales et enquêtes indépendantes @Katchanovski2026 évoquent l’implication de forces russes non identifiées dans le conflit du Donbass depuis 2014 afin de renforcer les séparatistes. Présentée sous cet angle, cette narration permet de justifier l’intervention militaire comme une opération de protection des populations locales : « Nous devions arrêter cette atrocité, ce génocide visant les millions de personnes qui vivent là-bas et qui avaient placé leurs espoirs en la Russie, en nous tous. »

Enfin, Poutine invoque l’article 51 de la Charte des Nations Unies @un_charter_1945, qui reconnaît le droit à la légitime défense, afin de renforcer la légitimité de l’intervention militaire. Cette référence au droit international vise à donner une justification juridique à l’opération et à présenter l’action russe comme une réponse nécessaire à une menace extérieure.

Dans l’ensemble, ce discours illustre une stratégie de communication mêlant victimisation, appel à l’histoire, justification morale et légitimation juridique afin de présenter l’intervention militaire comme nécessaire et défensive aux yeux de la population russe et de la communauté internationale.

== Source 2 : Déclarations de V. Zelensky au début de l’invasion russe


=== Présentation

Dès le début de l’invasion russe le 24 février 2022, le président ukrainien Volodymyr Zelensky adopte une communication largement fondée sur les réseaux sociaux et les vidéos diffusées en ligne @reuters_zelensky_selfie_2022. Contrairement aux allocutions présidentielles plus traditionnelles, il privilégie des prises de parole filmées directement dans les rues de Kiev, souvent avec un téléphone portable et dans une tenue militaire sobre. Ces vidéos sont rapidement relayées sur Telegram, X, Instagram ou encore par les médias internationaux.

À travers ces interventions, Zelensky cherche à maintenir le moral de la population ukrainienne tout en montrant que les institutions du pays continuent de fonctionner malgré l’invasion.

Dans ses différentes allocutions, le président ukrainien condamne fermement l’offensive russe, qu’il présente comme une attaque contre la souveraineté, la démocratie et l’indépendance de l’Ukraine. Il appelle également les citoyens ukrainiens à résister et insiste sur la nécessité d’une unité nationale face à l’invasion. Il déclare notamment : « Nous défendrons notre pays par tous les moyens possibles ».

Zelensky s’adresse aussi directement aux pays occidentaux et aux organisations internationales afin d’obtenir un soutien militaire, économique et diplomatique accru. Il accuse par ailleurs la Russie de violer le droit international et de s’attaquer aux populations civiles.

=== Analyse de la communication

La communication de Volodymyr Zelensky repose avant tout sur une stratégie de proximité et d’incarnation. Contrairement à des discours institutionnels traditionnels, le président ukrainien privilégie des vidéos tournées directement dans les rues de Kiev, souvent avec un téléphone portable et dans une tenue militaire sobre. Cette mise en scène vise à montrer qu’il partage la situation vécue par la population ukrainienne et qu’il reste présent malgré les dangers. Comme le montre cette célèbre vidéo @reuters_zelensky_here_2022, Volodymyr Zelensky apparaît aux côtés de membres du gouvernement ukrainien dans les rues de Kiev et déclare : « Nous sommes ici. Nous sommes avec vous. Nous resterons ici. »

Zelensky cherche également à mobiliser l’unité nationale ukrainienne. Ses discours utilisent fréquemment les termes « nous », « notre peuple » ou « notre pays » afin de renforcer le sentiment d’appartenance collective. Il présente la résistance ukrainienne comme une lutte pour la survie de la nation, mais également pour la défense des valeurs démocratiques et de la souveraineté du pays. Cette rhétorique vise à maintenir le moral de la population et à encourager la mobilisation face à l’invasion. Il affirme par exemple que « quand vous nous attaquez, vous verrez nos visages, pas nos dos ».

Le président ukrainien adopte aussi une stratégie de communication fortement tournée vers l’international. Une grande partie de ses interventions s’adresse directement aux pays occidentaux, aux institutions européennes et à l’OTAN. Zelensky cherche à susciter l’empathie et le soutien international en mettant en avant les souffrances des civils ukrainiens et les destructions provoquées par les combats. Cette communication émotionnelle permet de renforcer la visibilité médiatique du conflit et de maintenir une pression diplomatique sur les alliés de l’Ukraine. Son image de dirigeant resté à Kiev malgré les risques est notamment relayée par de nombreux médias internationaux @shuster2022zelensky_time.

On observe également une utilisation importante des réseaux sociaux et des formats numériques courts. Les vidéos diffusées sur Telegram, X, Instagram ou TikTok permettent une diffusion rapide des messages ukrainiens à travers le monde. Cette stratégie contribue à construire une image moderne et réactive de la communication ukrainienne, adaptée aux nouveaux usages médiatiques et à la circulation instantanée de l’information.

Enfin, Zelensky cherche à opposer le modèle démocratique ukrainien à l’image autoritaire de la Russie. Il présente régulièrement l’Ukraine comme un pays défendant la liberté, la démocratie et le droit international face à une agression extérieure. Cette opposition permet de renforcer le soutien occidental tout en donnant au conflit une dimension idéologique dépassant le simple cadre territorial.

Dans l’ensemble, la communication de Volodymyr Zelensky repose sur une stratégie mêlant proximité avec la population, mobilisation patriotique, communication émotionnelle et recherche de soutien international afin de renforcer la résistance ukrainienne sur les plans militaire, politique et médiatique.

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
  *Coisne Valentin :* Co-rédaction de l’analyse du discours russe, rédaction des analyses des discours d’Emmanuel Macron et de Joe Biden, réalisation du support PowerPoint. \
  \
  *Van der Veen Georgé :* Mise en page du document sous Typst, rédaction des introductions ainsi que des analyses du discours russe, du discours ukrainien et des réactions des civils et des forces armées. \
  \
  *Utilisation de l’intelligence artificielle* \
  Claude — [Usage : propositions de reformulations et amélioration du fichier Typst afin de répondre aux exigences du document.] \
  ChatGPT — [Usage : aide à la recherche de sources, reformulations et corrections rédactionnelles.]
]

#pagebreak()


#bibliography("src.bib", style: "apa", title: "Références")



