// ─── Paramètres globaux ───────────────────────────────────────────────────────


#set text(
  font: "Libertinus Serif",
  size: 12pt,
  lang: "fr",
)

#set par(
  justify: true,
  leading: 1em, // ≈ interligne 1,5
  spacing: 1.2em,
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
      L'invasion russe de l'Ukraine au prisme\ des discours.
    ]
    #v(0.8em)


    #text(size: 13pt, style: "italic", fill: rgb("#444444"))[
      Analyse comparée des prises de parole du 24 février 2022
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

En février 2022, l'Europe a été le théâtre d'une escalade des tensions entre la Russie et l'Ukraine, qui a abouti à l'invasion du territoire ukrainien par les forces russes. La propagande et la désinformation ont toujours occupé une place importante dans les conflits armés, mais rarement une guerre d'une telle ampleur aura été documentée en temps réel par ses propres acteurs. Sur les réseaux sociaux, combattants et civils diffusent chaque jour des images, des vidéos et des témoignages du front. Cette surabondance d'informations complique la vérification des sources, mais elle ouvre aussi de nouvelles possibilités d'analyse pour comprendre les enjeux du conflit et les stratégies de communication des acteurs impliqués.

Dans ce travail, nous examinerons comment l'information est produite par ces acteurs, comment elle est transformée et diffusée par les médias traditionnels et les réseaux sociaux, et comment elle est instrumentalisée à des fins de propagande et de manipulation de l'opinion publique.

#pagebreak()
== Présentation du cas

Le cas étudié dans ce travail concerne la guerre en Ukraine, déclenchée par l'invasion russe du 24 février 2022. Plusieurs raisons rendent ce cas particulièrement intéressant du point de vue informationnel.

D'abord, il s'agit du premier conflit armé d'une telle ampleur à se dérouler dans un environnement où chaque combattant et chaque civil peut devenir, via un smartphone, un producteur d'images et de témoignages diffusés en temps réel. Cette horizontalisation de la production d'information bouleverse les schémas classiques de la communication de guerre, qui était jusqu'ici largement contrôlée par les États-majors et les médias professionnels.

Le conflit oppose aussi deux récits radicalement incompatibles, défendus chacun par un appareil de communication structuré. La Russie présente l'invasion comme une « opération militaire spéciale » défensive, tandis que l'Ukraine et ses alliés occidentaux la qualifient d'agression illégale. Cette dualité narrative offre un terrain d'analyse intéressant pour observer comment un même événement peut être cadré, orienté lexicalement et chargé émotionnellement pour produire des perceptions opposées.

Enfin, ce cas dépasse largement le cadre d'un conflit régional. Les sanctions économiques, les choix énergétiques européens, les livraisons d'armes occidentales et les positions diplomatiques de chaque État dépendent en partie de la manière dont l'opinion publique mondiale perçoit le conflit. La communication n'est donc pas un accessoire de la guerre : elle conditionne directement les décisions politiques, économiques et militaires des acteurs internationaux. Étudier ce cas, c'est aussi étudier la communication comme instrument de puissance.

Pour toutes ces raisons, la guerre en Ukraine nous a paru un sujet particulièrement riche pour analyser comment l'information est produite, transformée et communiquée dans un environnement médiatique saturé.

= Présentation du sujet et du contexte


== Acteurs impliqués

Le conflit russo-ukrainien implique d'abord deux acteurs principaux sur le plan militaire et politique : la Fédération de Russie et l'Ukraine. Du côté russe, le pouvoir exécutif, l'armée et les médias d'État participent à la construction d'un discours qui justifie l'invasion par des arguments de sécurité, de protection des populations russophones et de lutte contre l'influence occidentale. Du côté ukrainien, le président Volodymyr Zelensky, les autorités politiques et les forces armées cherchent au contraire à présenter la guerre comme une agression contre la souveraineté nationale, tout en mobilisant la population autour de la résistance et de l'unité du pays.

Autour de ces deux pôles s'ajoutent plusieurs acteurs occidentaux, au premier rang desquels les États-Unis, l'Union européenne et l'OTAN. Leur rôle ne se limite pas à la diplomatie ou à l'aide militaire : ils interviennent aussi dans la construction du récit international du conflit, à travers les sanctions, les déclarations officielles et la condamnation de l'invasion russe. La manière dont ces acteurs qualifient la guerre, désignent les responsabilités et formulent leurs objectifs influence directement la perception du conflit à l'échelle mondiale.

Les civils occupent également une place essentielle dans cette guerre de l'information. En Ukraine comme en Russie, ils subissent les effets directs du conflit, mais ils deviennent aussi des producteurs de contenus en diffusant images, témoignages et vidéos sur les réseaux sociaux. Les journalistes, les ONG, les chercheurs en open source intelligence et les plateformes numériques jouent enfin un rôle important dans la circulation, la vérification et parfois la distorsion des informations. Le conflit ne se résume donc pas à un affrontement militaire : il oppose aussi des acteurs très divers dans une bataille pour définir la réalité des événements.

== Contexte historique

Le conflit trouve ses origines en septembre 2013, lorsque le président ukrainien Viktor Ianoukovitch décide de suspendre la signature d'un accord d'association avec l'Union européenne. En réaction, des manifestations pro-européennes s'organisent sur la place Maïdan à Kiev. La répression policière entraîne une escalade de la violence qui fait plusieurs morts, avant que Ianoukovitch ne fuie le pays en février 2014.

La Russie réagit rapidement en annexant la Crimée, une décision largement condamnée par la communauté internationale. Dans le même temps, un conflit armé éclate dans le Donbass, à l'est de l'Ukraine, où des groupes séparatistes prorusses reçoivent un soutien russe selon plusieurs sources occidentales et enquêtes internationales. Des accords de cessez-le-feu sont négociés à Minsk en 2014 et 2015, mais les violations restent fréquentes et les tensions persistent durant les années suivantes.

Fin 2021, la Russie concentre plus de 150 000 soldats à la frontière ukrainienne. Le 21 février 2022, Vladimir Poutine reconnaît unilatéralement l'indépendance des républiques séparatistes de Donetsk et de Louhansk et ordonne l'envoi de troupes dans la région. Trois jours plus tard, le 24 février 2022, la Russie lance une invasion militaire à grande échelle de l'Ukraine, ce qui transforme un conflit régional gelé depuis plusieurs années en une guerre aux conséquences militaires, humanitaires, énergétiques et économiques mondiales.

Ce résumé s'appuie principalement sur des sources occidentales @beauchemin_pumont_2022 @huri_russo_ukrainian_war_background et ne reflète donc pas nécessairement la narration russe des événements. Il faut donc garder à l'esprit que les parties au conflit défendent des récits divergents.

== Supports utilisés

Nous utiliserons principalement des discours officiels prononcés par les chefs d'État (Vladimir Poutine, Volodymyr Zelensky, Emmanuel Macron et Joe Biden), ainsi que des vidéos diffusées sur les réseaux sociaux par des civils et des militaires. Ces sources permettent d'explorer à la fois la communication institutionnelle et la production d'information à l'échelle individuelle, et offrent ainsi une vision large des différents camps de la guerre de l'information dans le contexte du conflit russo-ukrainien.

= Analyse de cinq sources
== Source 1 : Discours de V. Poutine sur l'intervention militaire en Ukraine

=== Présentation

Le 24 février 2022, le président russe Vladimir Poutine prononce un discours @putin2022address dans lequel il annonce le lancement d'une « opération militaire spéciale » en Ukraine. Il accuse les pays occidentaux, et notamment l'OTAN, de s'étendre dangereusement vers l'est et de menacer la sécurité de la Russie en installant des infrastructures militaires toujours plus proches de ses frontières.

Poutine affirme que les États-Unis et leurs alliés ont ignoré, durant plusieurs années, les demandes de garanties sécuritaires formulées par Moscou. Il présente par ailleurs l'Ukraine comme un État sous influence occidentale dont le gouvernement constituerait une menace pour la Russie ainsi que pour les populations russophones du Donbass.

Le président russe justifie l'intervention militaire par la volonté de protéger les habitants des républiques séparatistes, qu'il affirme victimes de violences depuis 2014. Il déclare que les objectifs de l'opération sont de « démilitariser » et de « dénazifier » l'Ukraine, tout en assurant que la Russie ne cherche pas à occuper le territoire ukrainien.

Enfin, Poutine adresse un avertissement aux pays étrangers : toute tentative d'intervention contre la Russie entraînera, selon lui, une réponse immédiate et de lourdes conséquences.

=== Analyse de la communication

Le discours de Poutine repose d'abord sur une logique de polarisation. La Russie y est présentée comme une nation ouverte au dialogue mais victime d'une menace extérieure : « nous avons patiemment essayé de conclure une entente avec les dirigeants de l'OTAN ». À l'inverse, les dirigeants occidentaux sont qualifiés d'« irresponsables », et leurs réponses sont décrites comme des « mensonges », du « cynisme » ou des « tentatives de chantage ». Cette opposition construit un récit dans lequel une Russie défensive fait face à un Occident agressif.

Poutine mobilise aussi la mémoire historique pour renforcer l'adhésion patriotique. La référence à la Seconde Guerre mondiale, avec la phrase « Le pays a arrêté l'ennemi et a été jusqu'à le défaire, mais à un coût énorme », associe implicitement les adversaires actuels à une menace comparable au nazisme. Le terme « dénazification » prolonge cette stratégie en déshumanisant le camp adverse et en donnant à l'intervention une dimension morale.

Dans la continuité de sa critique de l'Occident, Poutine évoque les guerres menées en Libye, en Syrie et en Irak, qu'il qualifie d'« utilisation illégale de forces armées » n'ayant conduit qu'à des « tragédies ». Cette comparaison positionne la Russie comme moralement plus légitime que les puissances occidentales et ancre le discours dans une logique de guerre préventive : la Russie serait contrainte d'agir avant de subir elle-même une déstabilisation.

Nous observons également ce que certains observateurs qualifient d'inversion du récit. Poutine affirme avoir « tout fait pour régler la situation par des moyens pacifiques », alors que des sources occidentales et des enquêtes indépendantes @Katchanovski2026 font état de l'implication de forces russes dans le Donbass depuis 2014. Cette version des événements permet de présenter l'intervention comme une opération de protection des populations locales : « Nous devions arrêter ce génocide visant les millions de personnes qui avaient placé leurs espoirs en la Russie. »

Enfin, la référence à l'article 51 de la Charte des Nations Unies @un_charter_1945, qui reconnaît le droit à la légitime défense, vise à donner une justification juridique à l'opération. Au total, ce discours articule victimisation, mobilisation de la mémoire collective, justification morale et légitimation juridique pour présenter l'intervention comme nécessaire et défensive, aussi bien aux yeux de l'opinion russe que de la communauté internationale.

== Source 2 : Déclarations de V. Zelensky au début de l'invasion russe
=== Présentation

Dès le début de l'invasion russe le 24 février 2022, le président ukrainien Volodymyr Zelensky adopte une communication fondée sur les réseaux sociaux et les vidéos diffusées en ligne @reuters_zelensky_selfie_2022. Contrairement aux allocutions présidentielles traditionnelles, il s'exprime depuis les rues de Kiev, en tenue militaire sobre et souvent avec un simple téléphone portable. Ces vidéos sont rapidement relayées sur Telegram, X, Instagram et par les médias internationaux.

À travers ces interventions, Zelensky cherche à maintenir le moral de la population ukrainienne tout en montrant que les institutions du pays continuent de fonctionner malgré l'invasion. Il condamne fermement l'offensive russe, qu'il présente comme une attaque contre la souveraineté et l'indépendance de l'Ukraine, appelle les citoyens à résister et insiste sur l'unité nationale. Il s'adresse aussi directement aux pays occidentaux et aux organisations internationales pour obtenir un soutien militaire, économique et diplomatique, et accuse la Russie de violer le droit international et de s'en prendre aux civils.

=== Analyse de la communication

La communication de Volodymyr Zelensky repose avant tout sur une stratégie de proximité et d'incarnation. En choisissant de s'exprimer dans la rue plutôt que depuis un palais, dans une tenue sobre plutôt qu'un costume présidentiel, il signale qu'il partage la situation vécue par la population et qu'il reste présent malgré les dangers. Cette mise en scène culmine dans la désormais célèbre vidéo @reuters_zelensky_here_2022 où il apparaît aux côtés de membres du gouvernement dans les rues de Kiev et déclare : « Nous sommes ici. Nous sommes avec vous. Nous resterons ici. »

Cette apparente spontanéité relève toutefois elle aussi d'une construction. Le t-shirt kaki, devenu la signature visuelle du président ukrainien dans toutes ses apparitions publiques et internationales, fonctionne comme un véritable uniforme symbolique. Il rappelle en permanence l'état de guerre à l'image, ce qui interdit toute lecture « normale » de la vie politique ukrainienne. La forme de communication adoptée, le selfie filmé avec un téléphone portable, est en réalité un format soigneusement choisi, qui exploite les codes esthétiques des réseaux sociaux pour produire un effet de vérité que les communications institutionnelles classiques ne peuvent pas atteindre.

Ses discours s'appuient ensuite sur un usage systématique du « nous », « notre pays », « notre peuple », ce qui renforce le sentiment d'appartenance collective. La résistance ukrainienne est présentée comme une lutte pour la survie nationale, mais aussi pour la défense de valeurs démocratiques universelles, ce qui permet d'articuler mobilisation intérieure et appel au soutien international. Ce cadrage idéologique a un effet rhétorique précis : en élevant le conflit au rang d'affrontement entre démocratie et autoritarisme, il déplace la question du terrain territorial vers un registre moral où le refus d'aider l'Ukraine devient difficile à défendre pour les puissances occidentales.

La communication de Zelensky est aussi très orientée vers l'extérieur. Une grande partie de ses interventions s'adresse directement aux institutions européennes, aux gouvernements alliés et à l'OTAN. En mettant en avant les souffrances des civils et les destructions causées par les bombardements, il entretient une pression diplomatique constante sur ses alliés. Cette stratégie est volontairement émotionnelle : la sélection des images, des chiffres et des récits diffusés vise à maintenir le conflit en tête de l'agenda international et à rendre politiquement coûteux tout ralentissement du soutien militaire ou financier. Les interventions devant les parlements étrangers, chacune adaptée à l'histoire et aux références du pays d'accueil, relèvent d'une diplomatie de l'émotion soigneusement préparée.

Comme dans toute communication de guerre, cette mise en récit suppose aussi une part de sélection. Les difficultés internes (tensions politiques, mobilisation forcée, suspension de partis d'opposition, situations sur certaines portions du front) sont peu, voire pas, abordées dans la communication présidentielle. Cela est cohérent avec un effort de guerre, mais constitue néanmoins un cadrage dont il faut tenir compte dans l'analyse. De la même manière, opposer une démocratie ukrainienne à une autocratie russe revient à présenter chaque camp comme un bloc homogène, et à effacer ses tensions internes. C'est exactement le procédé que Poutine emploie lorsqu'il dépeint une Russie unifiée face à un Occident monolithique.

Sur le plan des formats, l'utilisation de vidéos courtes adaptées aux réseaux sociaux (Telegram, X, Instagram, TikTok) permet une diffusion rapide et une portée mondiale, à contre-courant des standards institutionnels. Cette agilité numérique contribue à forger une image de leadership moderne et réactif, en phase avec les usages médiatiques contemporains. Elle illustre aussi comment un chef d'État peut transformer les codes de la communication horizontale en instrument vertical de mobilisation.

== Source 3 : Adresse aux Français d'Emmanuel Macron sur le conflit en Ukraine
=== Présentation
Le 24 février 2022, le président français Emmanuel Macron prononce une allocution @macron2022ukraine dans laquelle il condamne l'invasion de l'Ukraine par la Russie. Il exprime son soutien au peuple ukrainien et annonce qu'une réponse coordonnée sera décidée dans les heures suivantes au G7, au Conseil européen et à l'OTAN, en évoquant des sanctions proportionnées à la gravité de l'agression. Macron insiste sur les principes de souveraineté et d'intégrité territoriale, assure que la France continuera à soutenir l'Ukraine sur le plan humanitaire et militaire, et justifie rétrospectivement les efforts diplomatiques antérieurs, notamment sa rencontre du 7 février 2022 à Moscou.


=== Analyse de la communication

Le discours de Macron répond à plusieurs objectifs distincts. Le premier est de rassurer la population française : le verbe « protéger » revient à plusieurs reprises, soulignant l'engagement de la France envers ses ressortissants présents en Ukraine comme envers les citoyens sur le territoire national.

Un objectif de leadership européen se dessine également. L'Europe est mentionnée à trois reprises dans l'allocution — ce qui s'explique par le fait que la France assure la présidence du Conseil de l'Union européenne depuis janvier 2022. Macron s'exprime donc à la fois en tant que chef d'État français et au nom du continent, cherchant à montrer que la France est à la tête de la réponse européenne face à l'agression. Ce positionnement n'est pas neutre et sert aussi à inscrire la France, et son président, au centre d'un récit européen dont la mise en scène — notamment la rencontre Macron-Poutine au Kremlin du 7 février, devenue iconique par l'image de la « grande table » — a précédé l'invasion. Le discours du 24 février est ainsi à la fois une réaction à l'événement et la conclusion d'une séquence diplomatique soigneusement médiatisée.

Une dimension électorale se laisse enfin deviner. Le conflit éclate quelques mois avant l'élection présidentielle française ; bien que sa candidature ne soit pas encore officiellement déclarée, cette prise de parole permet à Macron de se positionner en défenseur de la paix et de la souveraineté, ce qui constitue un argument de poids auprès des électeurs. Le statut présidentiel offre ici un avantage de communication considérable : Macron parle depuis l'Élysée, dans un cadre solennel inaccessible à ses concurrents, et ses prises de parole sur l'Ukraine fonctionnent objectivement comme un capital politique national, même sans intention électoraliste explicite.

Le ton du discours est solennel et maîtrisé. L'évocation d'un « tournant dans l'histoire de l'Europe » souligne la gravité du moment sans verser dans la dramatisation, et la fermeté de la condamnation coexiste avec une absence totale d'invective personnelle — ce qui distingue nettement le registre de Macron de celui de Biden ou de Poutine. Cette retenue produit toutefois un effet rhétorique propre : en personnalisant moins la responsabilité que Biden, Macron préserve des marges de manœuvre diplomatique et maintient ouverte la possibilité d'un dialogue futur avec Moscou — ce qui correspond exactement à la position que défendra la diplomatie française dans les mois suivants.

Le choix des mots n'est pas anodin. Le mot « guerre » désigne systématiquement l'action russe, mais n'est jamais employé pour qualifier les mesures que la France entend prendre en soutien à l'Ukraine. Cette précaution lexicale évite à la fois de susciter la peur dans l'opinion française et de déclencher toute assimilation à une déclaration de guerre. Elle reflète aussi un cadrage politique délibéré : en présentant la réponse française comme une opération de soutien et de sanctions, et non comme une participation à un conflit, le discours construit pour l'opinion publique un seuil mental entre « aider l'Ukraine » et « être en guerre avec la Russie » — distinction stratégiquement nécessaire mais qui mérite, en analyse, d'être identifiée comme une construction et non comme une évidence.

L'expression « les fantômes du passé » mérite également attention : en convoquant implicitement la Seconde Guerre mondiale et la guerre froide, elle mobilise une émotion collective européenne reconnaissable sans nommer aucun événement précis. Ce flou est précisément ce qui en fait l'efficacité : la formule active des références historiques chargées tout en laissant à chaque auditeur le soin de les remplir, ce qui permet au discours de signaler la gravité de la situation sans s'engager sur une comparaison historique qui serait politiquement coûteuse à assumer explicitement. C'est, en miniature, un procédé de cadrage par allusion comparable — dans sa mécanique, non dans sa charge — à celui que Poutine emploie avec ses références à la Grande Guerre patriotique, à ceci près que Macron en module l'intensité et n'identifie aucun ennemi désigné.

== Source 4 : Discours de Joseph Biden sur l'invasion russe de l'Ukraine
=== Présentation
Le 24 février 2022, le président américain Joseph Biden prononce une allocution @biden2022remarks depuis l'East Room de la Maison-Blanche, dans laquelle il condamne fermement l'invasion russe de l'Ukraine. Il y annonce un ensemble de sanctions économiques et financières massives visant les banques russes, les entreprises d'État, les élites proches du Kremlin et les exportations technologiques, et détaille le renforcement de la posture militaire américaine et de l'OTAN sur le flanc oriental européen, tout en précisant que les forces américaines n'interviendront pas directement en Ukraine. Un passage est consacré aux conséquences économiques pour les citoyens américains, notamment sur les prix de l'énergie ; le discours s'achève sur un cadrage civilisationnel opposant démocratie et autocratie, avant une longue séance de questions-réponses avec la presse.

=== Analyse de la communication

Le discours de Biden poursuit plusieurs objectifs imbriqués.

Il valide d'abord rétrospectivement le renseignement américain. Depuis plusieurs semaines, l'administration annonçait publiquement l'imminence de l'invasion, parfois contre l'avis de ses propres alliés européens. Le discours s'ouvre sur une revendication explicite de cette anticipation : « For weeks, we have been warning that this would happen. And now it's unfolding largely as we predicted. » C'est une opération de restauration de crédibilité, particulièrement nécessaire après les fiascos de l'Irak en 2003 et de l'Afghanistan en 2021.

Biden affirme ensuite le leadership américain à la tête de l'alliance occidentale. L'énumération nommée des partenaires — France, Allemagne, Italie, Royaume-Uni, Canada, Japon, Australie, Nouvelle-Zélande, les 27 membres de l'UE, le G7 et l'OTAN — signale à Moscou que la réponse sera collective et démontre aux opinions publiques alliées que Washington reste le centre de gravité de la coalition.

Le discours remplit également une fonction de dissuasion stratégique. Plusieurs passages s'adressent davantage à Vladimir Poutine qu'à l'opinion américaine : « the United States will defend every inch of NATO territory with the full force of American power » fixe une ligne rouge claire. L'Ukraine ne sera pas défendue militairement, mais tout membre de l'OTAN le sera — une précision essentielle pour borner le conflit et éviter toute escalade involontaire.

Enfin, Biden anticipe la critique intérieure sur le coût économique de la crise. Sachant que la guerre va peser sur l'inflation à quelques mois des élections de mi-mandat, il consacre un long passage aux Américains directement touchés à la pompe, s'efforçant de désamorcer par avance le reproche d'avoir sacrifié le pouvoir d'achat américain à une cause étrangère.

Sur le plan rhétorique, le ton diffère sensiblement de la solennité juridique de Macron et de la véhémence historique de Poutine. Biden construit son propos comme un acte d'accusation : il accumule les preuves de la préméditation russe — 175 000 soldats massés, stocks de sang préparés, hôpitaux de campagne installés, cyberattaques, mise en scène politique à Moscou — pour établir la culpabilité russe au-delà du doute raisonnable. La répétition de formules courtes et catégoriques (« Putin is the aggressor. Putin chose this war. ») crée un effet de scansion qui martèle la responsabilité individuelle de Poutine. Cette personnalisation est délibérée : elle distingue le peuple russe de son dirigeant et maintient ouverte la possibilité d'une sortie de crise.

Le lexique de la préméditation structure toute la première partie — « premeditated attack », « brutal assault », « planning this for months » — et prépare moralement les sanctions qui seront annoncées dans la foulée. La formule « without provocation, without justification, without necessity » verrouille toute discussion sur l'élargissement de l'OTAN ou les griefs sécuritaires russes développés dans le discours de Poutine. Enfin, la péroraison sur le binôme « democracy and autocracy, sovereignty and subjugation » fournira la signature rhétorique de Biden tout au long de son mandat : un cadre simple, exportable mondialement, dans lequel chaque État est invité à choisir son camp.

== Source 5 : Les vidéos de militaires et de civils diffusées sur les réseaux sociaux
=== Présentation

Depuis le début de l'invasion en février 2022, une large part des images du conflit provient directement des réseaux sociaux. Des soldats, des civils, des journalistes et des volontaires publient quotidiennement des vidéos qui montrent les combats, les bombardements, les déplacements de population ou la vie quotidienne dans les zones touchées par la guerre. Ces contenus circulent principalement sur Telegram, TikTok, X, Instagram et YouTube @axios_misinformation_2022.

Contrairement aux médias traditionnels, ces vidéos sont souvent filmées avec des smartphones et publiées quasi immédiatement après les événements, ce qui donne l'impression d'un accès direct et authentique au conflit. Certaines deviennent rapidement virales et sont reprises par les chaînes d'information du monde entier.

Cette diffusion massive s'accompagne cependant de nombreux problèmes de désinformation. Plusieurs médias et organismes de vérification ont montré que certaines vidéos étaient sorties de leur contexte, modifiées ou entièrement falsifiées afin d'influencer l'opinion publique @guardian_fake_bbc_2022 @politifact_fake_bbc_2022.

=== Analyse de la communication

Les vidéos diffusées sur les réseaux sociaux jouent avant tout un rôle émotionnel. Elles donnent à voir directement les conséquences humaines de la guerre (destructions, blessés, séparations familiales, scènes de combat) et cherchent à provoquer l'empathie, la colère ou le choc pour mobiliser l'opinion publique et encourager le soutien à un camp.

Le ton de ces contenus est généralement plus spontané que celui des médias institutionnels. Les civils qui filment leur quotidien dans les abris ou les soldats qui enregistrent des vidéos depuis le front créent une impression d'authenticité et de proximité qui renforce leur crédibilité aux yeux des internautes, même lorsque les informations ne sont pas vérifiées.

Ces vidéos servent également d'outil de propagande et de mobilisation. Du côté ukrainien, de nombreuses publications mettent en avant la résistance nationale, le courage des soldats ou les destructions causées par l'armée russe afin de maintenir le moral de la population et consolider le soutien international. Des contenus prorusses cherchent quant à eux à justifier l'intervention ou à discréditer l'Ukraine et les pays occidentaux. Dans les deux cas, nous observons une sélection biaisée des images : les souffrances de son propre camp sont largement amplifiées, tandis que les violences commises par celui-ci sont minimisées ou absentes. Chaque camp construit ainsi un récit où il se présente comme victime ou défenseur.

Les réseaux sociaux favorisent par ailleurs une circulation rapide de fausses informations. Plusieurs enquêtes journalistiques ont mis au jour la diffusion de vidéos qui imitent les habillages visuels de médias reconnus comme la BBC ou CNN, pour donner une apparence crédible à des contenus trompeurs @poynter_fake_bbc_2022. Des séquences sorties de leur contexte ou provenant d'autres conflits ont également été réutilisées comme s'il s'agissait d'images récentes de la guerre en Ukraine @axios_misinformation_2022.

Au-delà de la désinformation, ces contenus transforment plus profondément la façon dont les guerres sont médiatisées. En devenant producteurs d'information à part entière, civils et soldats réduisent le monopole des journalistes professionnels sur la couverture du conflit. Cette évolution permet une diffusion extrêmement rapide des événements, mais elle rend en même temps la vérification plus difficile et favorise la propagation de récits concurrents et parfois manipulés.

= Enjeux et risques

Dans ce conflit, qui constitue autant une bataille de l'information qu'un affrontement militaire, la Russie et l'Ukraine cherchent toutes deux à défendre leur légitimité auprès des publics nationaux et internationaux. La Russie s'efforce de présenter son intervention comme nécessaire et défensive pour maintenir le soutien de sa population et de ses forces armées. L'Ukraine cherche à mobiliser l'appui international et à renforcer la résistance nationale. Les deux camps sont donc engagés dans une lutte pour contrôler le récit du conflit et peser sur l'opinion publique mondiale.

Les réseaux sociaux occupent une place centrale dans cette dynamique. La diffusion d'images violentes et de témoignages directs peut susciter l'empathie et renforcer la mobilisation, mais une exposition répétée à des contenus choquants risque aussi de provoquer une fatigue émotionnelle, voire un désengagement progressif des publics. La multiplication des vidéos de guerre peut rendre les spectateurs moins réceptifs à l'information, même quand celle-ci est authentique.

Un autre risque majeur tient à la désinformation. Les vidéos sorties de leur contexte, les images falsifiées ou les contenus réutilisés à partir d'autres conflits peuvent se propager massivement avant toute vérification. Cela fragilise la confiance dans les sources d'information et complique le travail des journalistes, des chercheurs et des plateformes de fact-checking. À terme, ce phénomène alimente la méfiance envers les médias traditionnels et accentue la polarisation des opinions.

Le conflit en Ukraine illustre ainsi que l'information est devenue une arme stratégique à part entière. Elle ne sert plus seulement à informer, mais aussi à convaincre, mobiliser, influencer et parfois manipuler. Savoir distinguer les faits des récits construits représente dès lors un enjeu essentiel, non seulement pour comprendre la guerre, mais aussi pour en saisir toutes les répercussions.


= Conclusion

L'analyse des cinq sources étudiées confirme que le conflit russo-ukrainien constitue une guerre de l'information à part entière, menée en parallèle des opérations militaires sur le terrain. Chaque source examinée éclaire un aspect distinct de cette bataille.

Le discours de Poutine illustre comment victimisation, mobilisation de la mémoire historique et légitimation juridique peuvent s'articuler pour transformer une invasion en opération défensive. Celui de Zelensky montre, à l'inverse, comment un format apparemment spontané (le selfie filmé au téléphone, le t-shirt kaki, l'usage du « nous ») peut être soigneusement préparé pour incarner une résistance nationale et maintenir une pression diplomatique constante sur les alliés. Macron, lui, mobilise la solennité présidentielle et un cadrage lexical prudent pour rassurer l'opinion française tout en préservant les marges de manœuvre diplomatique de la France. Biden, enfin, construit son allocution comme un acte d'accusation appuyé sur la preuve : il restaure la crédibilité du renseignement américain et fixe des lignes rouges destinées à borner le conflit. À ces communications institutionnelles s'ajoute, avec la cinquième source, la prise de parole massive des civils et des soldats sur les réseaux sociaux. Il s'agit d'une production d'information décentralisée qui transforme chaque smartphone en outil de témoignage, de mobilisation, mais aussi de désinformation.

Mises côte à côte, ces sources révèlent plusieurs traits communs malgré leurs orientations opposées. Toutes reposent sur des choix de cadrage délibérés (qui parle, depuis où, dans quelle tenue, avec quel lexique) et toutes opèrent une sélection de ce qui est dit et de ce qui est tu. Toutes cherchent enfin à dépasser leur audience immédiate pour peser sur un public international dont l'opinion conditionne le soutien militaire, économique ou diplomatique.

Cette observation invite à une distinction qui nous paraît essentielle, et qui est trop souvent négligée dans le langage courant : celle qui sépare informer de communiquer. Informer, au sens strict, consiste à transmettre des faits vérifiables, recoupés et présentés avec une intention de neutralité. Le critère de réussite est la fiabilité. Communiquer, en revanche, consiste à construire un message en vue d'un effet précis sur le récepteur, qu'il s'agisse de convaincre, mobiliser, rassurer ou dissuader. Cet effet est obtenu par la sélection des éléments, le choix d'un angle, l'adoption d'un ton et la mise en scène du propos. Le critère de réussite n'est plus l'exactitude factuelle mais l'efficacité persuasive.

À la lumière de cette distinction, aucune des cinq sources analysées ne relève d'une démarche purement informative. Toutes, qu'il s'agisse des discours présidentiels ou des contenus diffusés sur les réseaux sociaux, sont des actes de communication, c'est-à-dire des messages construits pour produire un effet. Cela ne signifie pas qu'elles soient nécessairement mensongères : un discours peut être à la fois orienté et factuellement exact. Mais cela signifie que les faits qu'elles transmettent sont sélectionnés, cadrés et hiérarchisés en fonction d'objectifs précis. Les chefs d'État ne sont pas seulement des décideurs politiques, mais aussi des communicants stratégiques, dont chaque prise de parole est un acte aussi calculé que les sanctions ou les livraisons d'armes.

Le travail mené sur ces cinq sources permet ainsi de mieux comprendre comment les récits du conflit sont construits. Il montre aussi que les divergences entre les versions russe, ukrainienne et occidentales ne relèvent pas seulement de différences factuelles, mais aussi de logiques de communication dont la maîtrise est devenue un instrument de puissance à part entière. Distinguer information et communication n'est donc pas une simple exigence sémantique : c'est la condition même d'une lecture critique des messages qui structurent notre rapport au monde.


#rect(
  width: 100%,
  stroke: 0.5pt,
  inset: 1em,
  radius: 4pt,
)[
  #set par(justify: false)

  *Contribution personnelle et répartition des tâches* \
  \
  *Coisne Valentin :* Co-rédaction de l'analyse du discours russe, rédaction des analyses des discours d'Emmanuel Macron et de Joe Biden, réalisation du support PowerPoint. \
  \
  *Van der Veen Georgé :* Mise en page du document sous Typst, rédaction des introductions ainsi que des analyses du discours russe, du discours ukrainien et des réactions des civils et des forces armées. \
  \
  *Utilisation de l'intelligence artificielle* \
  Claude — [Usage : propositions de reformulations et amélioration du fichier Typst afin de répondre aux exigences du document.] \
  ChatGPT — [Usage : aide à la recherche de sources, reformulations et corrections rédactionnelles.]
]

#pagebreak()


#bibliography("src.bib", style: "apa", title: "Références")
