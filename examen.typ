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

Ce travail examinera comment l'information est produite par les différents acteurs du conflit, comment elle est transformée et diffusée à travers les médias traditionnels et les réseaux sociaux, et comment elle est instrumentalisée à des fins de propagande et de manipulation de l'opinion publique.


#pagebreak()

= Présentation du sujet et du contexte
== Acteurs impliqués

Le conflit russo-ukrainien implique d’abord deux acteurs principaux sur le plan militaire et politique : la Fédération de Russie et l’Ukraine. Du côté russe, le pouvoir exécutif, l’armée et les médias d’État participent à la construction d’un discours justifiant l’invasion par des arguments de sécurité, de protection des populations russophones et de lutte contre l’influence occidentale. Du côté ukrainien, le président Volodymyr Zelensky, les autorités politiques et les forces armées cherchent au contraire à présenter la guerre comme une agression contre la souveraineté nationale, tout en mobilisant la population autour de la résistance et de l’unité du pays.

Autour de ces deux pôles s’ajoutent plusieurs acteurs occidentaux, au premier rang desquels les États-Unis, l’Union européenne et l’OTAN. Leur rôle n’est pas uniquement diplomatique ou militaire : ils interviennent aussi dans la production du récit international du conflit, notamment à travers les sanctions, les déclarations officielles, l’aide militaire à l’Ukraine et la condamnation de l’invasion russe. La manière dont ces acteurs qualifient la guerre, les responsabilités et les objectifs poursuivis influence directement la perception du conflit à l’échelle mondiale.

Les civils occupent également une place essentielle dans cette guerre de l’information. En Ukraine comme en Russie, ils subissent les effets directs du conflit, mais deviennent aussi des producteurs de contenus en diffusant des images, témoignages et vidéos sur les réseaux sociaux. Les journalistes, les ONG, les chercheurs en open source intelligence et les plateformes numériques jouent enfin un rôle déterminant dans la circulation, la vérification et parfois la manipulation des informations. Le conflit ne se limite donc pas à un affrontement militaire : il met aussi aux prises des acteurs très divers dans une bataille pour définir la réalité des événements.

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

Zelensky cherche également à mobiliser l’unité nationale ukrainienne. Ses discours utilisent fréquemment les termes « nous », « notre peuple » ou « notre pays » afin de renforcer le sentiment d’appartenance collective. Il présente la résistance ukrainienne comme une lutte pour la survie de la nation, mais également pour la défense des valeurs démocratiques et de la souveraineté du pays. Cette rhétorique vise à maintenir le moral de la population et à encourager la mobilisation face à l’invasion.

Le président ukrainien adopte aussi une stratégie de communication fortement tournée vers l’international. Une grande partie de ses interventions s’adresse directement aux pays occidentaux, aux institutions européennes et à l’OTAN. Zelensky cherche à susciter l’empathie et le soutien international en mettant en avant les souffrances des civils ukrainiens et les destructions provoquées par les combats. Cette communication émotionnelle permet de renforcer la visibilité médiatique du conflit et de maintenir une pression diplomatique sur les alliés de l’Ukraine. Son image de dirigeant resté à Kiev malgré les risques est notamment relayée par de nombreux médias internationaux @shuster2022zelensky_time.

On observe également une utilisation importante des réseaux sociaux et des formats numériques courts. Les vidéos diffusées sur Telegram, X, Instagram ou TikTok permettent une diffusion rapide des messages ukrainiens à travers le monde. Cette stratégie contribue à construire une image moderne et réactive de la communication ukrainienne, adaptée aux nouveaux usages médiatiques et à la circulation instantanée de l’information.

Enfin, Zelensky cherche à opposer le modèle démocratique ukrainien à l’image autoritaire de la Russie. Il présente régulièrement l’Ukraine comme un pays défendant la liberté, la démocratie et le droit international face à une agression extérieure. Cette opposition permet de renforcer le soutien occidental tout en donnant au conflit une dimension idéologique dépassant le simple cadre territorial.

Dans l’ensemble, la communication de Volodymyr Zelensky repose sur une stratégie mêlant proximité avec la population, mobilisation patriotique, communication émotionnelle et recherche de soutien international afin de renforcer la résistance ukrainienne sur les plans militaire, politique et médiatique.

== Source 3 : Adresse aux Français d'Emmanuel Macron sur le conflit en Ukraine
=== Présentation
Le 24 février 2022, le président français Emmanuel Macron a prononcé une allocution @macron2022ukraine dans laquelle il condamne fermement l'invasion de l'Ukraine par la Russie. Il exprime son soutien au peuple ukrainien et  il annonce qu'une réponse coordonnée sera décidée dans les heures suivantes au G7, au Conseil européen et à l'OTAN, en évoquant des sanctions à la hauteur de l'agression. Macron souligne l'importance de défendre les principes de souveraineté et d'intégrité territoriale, et appelle à une réponse collective de la communauté internationale pour faire face à cette agression. Il assure également que la France continuera à soutenir l'Ukraine sur le plan humanitaire et militaire, tout en justifiant rétrospectivement les efforts diplomatiques antérieurs, notamment la rencontre du 7 février 2022 à Moscou.
=== Analyse de la communication


Dans son discours, Macron poursuit plusieurs objectifs. Le président cherche d'abord à rassurer la population française en utilisant à plusieurs reprises le verbe "protéger", afin de souligner que la France protégera ses citoyens, qu'ils se trouvent sur le territoire ukrainien ou sur le territoire français.
Un objectif de leadership européen ressort également. L'Europe est mentionnée à trois reprises dans l'allocution, ce qui s'explique par le poids de la France au sein de l'Union européenne et par les implications du conflit ukrainien pour la sécurité et la stabilité du continent. La France assure par ailleurs la présidence du Conseil de l'Union européenne depuis janvier 2022 : le chef de l'État parle donc à la fois en tant que président français et au nom de l'Europe, cherchant à montrer que la France est à la tête de la réponse européenne face à l'agression russe.
Un objectif électoral se devine enfin, le début du conflit se déroulant quelques mois avant les élections présidentielles françaises. Même si la candidature n'a pas encore été officiellement déclarée, cette prise de parole permet à Macron de se positionner en tant que défenseur de la paix et de la souveraineté, ce qui peut constituer un argument important auprès des électeurs.
Le ton du discours est solennel, retenu, marqué par une volonté de gravité maîtrisée. L'évocation d'un "tournant dans l'histoire de l'Europe" souligne l'importance du moment sans verser dans la dramatisation. La fermeté domine pour condamner l'invasion, tout en évitant l'emphase ou l'invective personnelle, ce qui distingue le registre français de celui de Biden ou de Poutine.
Le choix des mots n'est pas anodin. Le mot "guerre" revient à plusieurs reprises pour décrire ce que fait la Russie, mais jamais pour qualifier les actions que la France entreprendra pour aider l'Ukraine. Cette précaution lexicale permet d'éviter de susciter la peur chez les citoyens français, mais aussi de ne pas déclencher juridiquement une déclaration d'état de guerre ou de mobilisation, mesures qui pourraient être perçues comme radicales par la population française comme par l'opinion internationale. L'expression "les fantômes du passé" mérite également une attention particulière : en évoquant implicitement les conflits de la Seconde Guerre mondiale et de la guerre froide, elle convoque une émotion collective européenne reconnaissable sans qu'aucune référence historique précise ne soit nommée, ce qui permet de maintenir un ton relativement calme et rassurant tout en soulignant la gravité de la situation.
== Source 4 : Discours de Joseph Biden sur l'invasion russe de l'Ukraine
=== Présentation
Le 24 février 2022, le président américain Joseph Biden a prononcé une allocution @biden2022remarks depuis l'East Room de la Maison-Blanche, en début d'après-midi (13h43, heure de Washington), dans laquelle il condamne fermement l'invasion russe de l'Ukraine. Il y annonce un train de sanctions économiques et financières massives visant les banques russes, les entreprises d'État, les élites proches du Kremlin et les exportations technologiques. Biden détaille également le renforcement militaire de la posture américaine et de l'OTAN sur le flanc oriental européen, tout en précisant que les forces américaines n'interviendront pas directement en Ukraine. Il consacre un passage à la question domestique des prix de l'énergie pour les Américains, et conclut par un cadrage civilisationnel opposant démocratie et autocratie. L'allocution est suivie d'une longue séance de questions-réponses avec la presse, partie intégrante du dispositif communicationnel américain.

=== Analyse de la communication
Dans son discours, Biden poursuit plusieurs objectifs :

Il valide rétrospectivement les renseignements américains. Depuis plusieurs semaines, l'administration américaine annonçait publiquement l'imminence de l'invasion, parfois contre l'avis de ses propres alliés européens. Le discours s'ouvre sur une revendication explicite de cette anticipation (« For weeks, we have been warning that this would happen. And now it's unfolding largely as we predicted »). C'est une opération de restauration de la crédibilité du renseignement américain, particulièrement importante après les fiascos de l'Irak en 2003 et de l'Afghanistan en 2021.
Il poursuit un objectif de leadership de l'alliance occidentale. Le discours énumère nommément les partenaires de la coalition (France, Allemagne, Italie, Royaume-Uni, Canada, Japon, Australie, Nouvelle-Zélande), les 27 membres de l'Union européenne, les pays du G7, et l'OTAN. Cette accumulation vise à démontrer que les États-Unis ne sont pas isolés mais à la tête d'un bloc structuré. Il signale simultanément à Moscou que la réponse sera collective, et aux opinions publiques alliées que Washington reste le centre de gravité de la coalition.
Il poursuit un objectif de dissuasion stratégique. Plusieurs passages s'adressent davantage à Vladimir Poutine qu'aux Américains. La phrase « the United States will defend every inch of NATO territory with the full force of American power » et la mention répétée de l'article 5 fixent une ligne rouge claire : l'Ukraine ne sera pas défendue militairement, mais tout pays de l'OTAN le sera. Cette précision est essentielle parce qu'elle borne le conflit et évite l'escalade involontaire.
Il anticipe la critique intérieure sur les prix de l'énergie. Biden consacre un long passage aux conséquences économiques pour les Américains (« I will do everything in my power to limit the pain the American people are feeling at the gas pump »). Il sait que la guerre va alourdir l'inflation à quelques mois des élections de mi-mandat, et il s'efforce de désamorcer par avance le reproche d'avoir sacrifié le pouvoir d'achat américain à une cause étrangère.

Biden utilise un ton de fermeté factuelle et accusatrice, distinct de la solennité juridique de Macron et de la véhémence historique de Poutine. Le discours est construit comme un acte d'accusation : il énumère les preuves de la préméditation russe (175 000 soldats massés, supports sanguins préparés, hôpitaux de campagne installés, cyberattaques, théâtralisation politique à Moscou). Cette accumulation factuelle vise à établir la culpabilité russe au-delà du doute raisonnable. La répétition de formules courtes et catégoriques (« Putin is the aggressor. Putin chose this war. ») crée un effet de scansion qui martèle la responsabilité russe. À plusieurs reprises, Biden souligne également que les effets des sanctions prendront du temps (« This is going to take time »), ce qui est inhabituel dans un discours présidentiel américain traditionnellement orienté vers l'action décisive, et qui prépare l'opinion à ne pas exiger de résultats immédiats.
Le choix des mots de Biden est tout aussi révélateur que celui de Macron. Le lexique de la préméditation structure toute la première partie : « premeditated attack », « brutal assault », « planning this for months ». Ce vocabulaire prépare moralement et politiquement les sanctions massives qui seront annoncées dans la foulée. La formule « without provocation, without justification, without necessity » verrouille toute possibilité d'expliquer l'invasion par des griefs russes légitimes : Biden refuse par avance la discussion sur l'élargissement de l'OTAN ou les craintes sécuritaires russes que Poutine a longuement développées dans son propre discours. Là où Macron parle le langage du droit, Biden parle celui de la morale et de la personnalisation : Poutine est nommé à plusieurs reprises et qualifié de « pariah », terme volontairement disqualifiant qui désigne celui qui est exclu de toute communauté légitime. Cette personnalisation de la responsabilité sur Poutine seul est une stratégie : elle distingue le peuple russe de son dirigeant, ce qui maintient ouverte la possibilité d'une sortie de crise par le haut. Enfin, le binôme « democracy and autocracy, sovereignty and subjugation » apparaît dans la péroraison et deviendra la signature rhétorique de Biden tout au long de son mandat — il fournit un cadre simple et exportable mondialement, dans lequel chaque pays est invité à choisir son camp.
== Source 5 : Les vidéos de militaires et de civils diffusées sur les réseaux sociaux
=== Présentation

Depuis le début de l’invasion russe en février 2022, une grande partie des images du conflit provient directement des réseaux sociaux. Des soldats, des civils, des journalistes ou encore des volontaires publient quotidiennement des vidéos montrant les combats, les bombardements, les déplacements de population ou la vie quotidienne dans les zones touchées par la guerre. Ces contenus sont principalement diffusés sur Telegram, TikTok, X, Instagram et YouTube @axios_misinformation_2022.

Contrairement aux médias traditionnels, ces vidéos sont souvent filmées avec des smartphones et publiées presque immédiatement après les événements. Elles donnent ainsi l’impression d’un accès direct et authentique au conflit. Certaines images deviennent rapidement virales et sont reprises par les chaînes d’information du monde entier.

Cependant, cette diffusion massive s’accompagne aussi de nombreux problèmes de désinformation. Plusieurs médias et organismes de vérification ont montré que certaines vidéos étaient sorties de leur contexte, modifiées ou entièrement falsifiées afin d’influencer l’opinion publique @guardian_fake_bbc_2022 @politifact_fake_bbc_2022.

=== Analyse de la communication

Les vidéos diffusées sur les réseaux sociaux jouent avant tout un rôle émotionnel. Elles permettent de montrer directement les conséquences humaines de la guerre : destructions, blessés, séparations familiales ou scènes de combat. Ce type de contenu cherche souvent à provoquer l’empathie, la colère ou le choc afin de mobiliser l’opinion publique et d’encourager le soutien à un camp.

Le ton utilisé dans ces vidéos est généralement plus spontané et personnel que celui des médias traditionnels. Les civils filmant leur quotidien dans les abris ou les soldats enregistrant des vidéos depuis le front donnent une impression d’authenticité et de proximité. Cette apparente spontanéité renforce la crédibilité des contenus auprès des internautes, même lorsque les informations ne sont pas vérifiées.

Les vidéos servent également d’outil de propagande et de mobilisation. Du côté ukrainien, de nombreuses publications mettent en avant la résistance nationale, le courage des soldats ou les destructions causées par l’armée russe afin de maintenir le moral de la population et renforcer le soutien international. À l’inverse, des contenus prorusses cherchent à justifier l’intervention militaire ou à discréditer l’Ukraine et les pays occidentaux.

On observe aussi des biais importants dans la sélection des images diffusées. Les contenus montrant les souffrances de son propre camp sont largement partagés, tandis que les violences commises par celui-ci sont souvent absentes ou minimisées. Chaque camp construit ainsi un récit du conflit mettant en avant son propre rôle de victime ou de défenseur.

Les réseaux sociaux favorisent également la circulation rapide de fausses informations. Plusieurs enquêtes journalistiques ont montré la diffusion de vidéos imitant les habillages visuels de médias reconnus comme la BBC ou CNN afin de donner une apparence crédible à des contenus trompeurs @guardian_fake_bbc_2022 @poynter_fake_bbc_2022. Des vidéos sorties de leur contexte ou provenant d’autres conflits ont aussi été réutilisées comme s’il s’agissait d’images récentes de la guerre en Ukraine @axios_misinformation_2022.

Enfin, ces vidéos transforment profondément la manière dont les guerres sont médiatisées. Les civils et les soldats deviennent eux-mêmes producteurs d’information, ce qui réduit le monopole des journalistes traditionnels sur la couverture du conflit. Cette évolution permet une diffusion extrêmement rapide des événements, mais rend également plus difficile la vérification des informations et favorise la propagation de récits concurrents et parfois manipulés.
= Enjeux et risques

= Enjeux et risques

Dans ce conflit, qui constitue autant une bataille de l’information qu’un affrontement militaire, la Russie et l’Ukraine cherchent toutes deux à défendre leur légitimité et leur image auprès des publics nationaux et internationaux. D’un côté, la Russie tente de présenter son intervention comme nécessaire et défensive afin de maintenir le soutien de sa population et de ses forces armées. De l’autre, l’Ukraine cherche à mobiliser l’appui international et à renforcer la résistance nationale face à l’invasion. Les deux camps sont donc engagés dans une lutte pour contrôler le récit du conflit et influencer l’opinion publique mondiale.

Les réseaux sociaux jouent un rôle central dans cette dynamique. La diffusion d’images violentes et de témoignages directs permet de susciter l’empathie, de renforcer la mobilisation et d’attirer l’attention du public sur la réalité du terrain. Cependant, cette exposition répétée à des contenus choquants peut aussi provoquer une forme de fatigue émotionnelle, voire un désengagement progressif des publics. La multiplication des vidéos de guerre peut ainsi rendre les spectateurs moins réceptifs à l’information, même lorsqu’elle est authentique.

Un autre risque majeur concerne la désinformation. Les vidéos sorties de leur contexte, les images falsifiées ou les contenus réutilisés à partir d’autres conflits peuvent circuler très rapidement et tromper un large public avant toute vérification. Cette situation fragilise la confiance dans les sources d’information et complique le travail des journalistes, des chercheurs et des plateformes de vérification. À terme, elle peut alimenter la méfiance envers les médias traditionnels et accentuer la polarisation des opinions.

Le conflit en Ukraine montre ainsi que l’information est devenue une arme stratégique à part entière. Elle ne sert plus seulement à informer, mais aussi à convaincre, mobiliser, influencer et parfois manipuler. Dans ce contexte, savoir distinguer les faits des récits construits devient un enjeu essentiel pour comprendre la guerre et ses répercussions.

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



