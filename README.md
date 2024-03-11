# 🟣**Projet ECF-FrontDWWM-2024**🟣

## 🛸Planificateur de Voyages Spatiaux🛸

- [🟣**Projet ECF-FrontDWWM-2024**🟣](#projet-ecf-frontdwwm-2024)
  - [🛸Planificateur de Voyages Spatiaux🛸](#planificateur-de-voyages-spatiaux)
  - [À propos](#à-propos)
  - [Ressources](#ressources)
- [Accès au Site](#accès-au-site)
- [Technologies Utilisées:](#technologies-utilisées)
  - [Technologies d'organisation du projet:](#technologies-dorganisation-du-projet)
  - [Front-end:](#front-end)
  - [Back-end:](#back-end)
  - [Base de données :](#base-de-données-)
- [Installation des Frameworks et des bibliothèques:](#installation-des-frameworks-et-des-bibliothèques)
  - [Front-end:](#front-end-1)
  - [Back-end:](#back-end-1)
- [Principaux Problèmes Rencontrés](#principaux-problèmes-rencontrés)
- [Prochaines étapes](#prochaines-étapes)
- [Contributions](#contributions)
- [Remerciements](#remerciements)
  - [🟣"Tout grand voyage commence par un simple pas" (Bouddha) 🟣](#tout-grand-voyage-commence-par-un-simple-pas-bouddha-)
  
---

## À propos

Le projet ECF-FrontDWWM-2024 est une application web pour la planification de voyages spatiaux. Son objectif est de répondre aux besoins des professionnels du développement et de divers domaines, en leur permettant de présenter leurs travaux et de découvrir d'autres projets.

---

## Ressources

- Enregistrement de nouveaux utilisateurs du site
- Connexion des utilisateurs existants
- La possibilité de choisir le trajet et le pilote
- Creation de ticket

# Accès au Site

Le site est disponible sur localhost. Vous pouvez y accéder via l'URL suivante :

[ECF-FrontDWWM-2024](http://localhost:8888)

---

# Technologies Utilisées:

## Technologies d'organisation du projet:
- La modele[Figma](https://www.figma.com/)
  - Maquetage Figma pour Desktop
  - Maquetage Figma pour Ipad 768 * 981
  - Maquetage Figma pour Iphone 14 Pro & 15 Pro 393 * 852
- Organisation de projet: [Trello](https://trello.com/b/Y8B1iAkv/conduite-de-projet)

---

## Front-end:
- Langage de Programmation: [HTML] [CSS] [JavaScript]
- Framework: [Bootstrap 5.3.3](https://getbootstrap.com/)

---

## Back-end:
- Langage de Programmation: [JavaScript]
- Framework: [Node.JS]
- Bibliothèque:[Express][Cors][Nodemon]
- Fetch API: Récoupérer les donées de destinations spatiales, depuis des APIs publiques.

---

## Base de données :
- Base de Données: [MySQL]
- PhpMyAdmin: [PhpMyAdmin]
- Postman [Postman]
  
---

# Installation des Frameworks et des bibliothèques:

## Front-end:

- Bootstrap 5.3.3:
  Ajouter le link [Bootstrap] `<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">` dans `index.html`

## Back-end:

1. Installez node.js 
2. Dans le terminal exécutez la commande `npm install`
3. Installez express
4. Dans le terminal exécutez la commande `npm install express`
5. Installez cors
6. fans le terminal exécutez la commande `npm install cors`
7. Installez nodemon
6. Dans le terminal exécutez la commande `npm install nodemon`

---

# Principaux Problèmes Rencontrés

Dans cette section, je souligne certains défis auxquels j'ai été confronté lors du développement du projet. Ce sont des points qui nécessitent une attention et des efforts supplémentaires pour améliorer la qualité et l'efficacité du projet.

1. **Problème 1 : Création du projet dans Figma.**
   - *Context*: J'ai commencé la création du fond(backgraund-color) pour le projet à l'aide de Figma. Environ 300 groupes d'éléments (étoiles et planètes) ont été créés.
   - *Impact*: J'ai perdu plusieurs jours avant que la maquette ne soit achevée.
   - *Solutions possibles*: Choisir quelques images pour l'arrière-plan. Si la création de groupes d'éléments est une question de principe, alors prévoir plus de temps pour la maquette.

2. **Problème 2: Les noms des colonnes SQL**
   - *Context*: J'ai nommé les colonnes en utilisant des espaces.
   - *Impact*: J'ai perdu beaucoup de temps à modifier le code
   - *Solutions possibles*: Exclure l'utilisation d'espaces dans les noms de colonnes et utiliser CamelCase par example.

---

# Prochaines étapes

Étant donné qu'il s'agit d'un projet relativement court, j'ai envisagé quelques implémentations possibles pour l'avenir.

 **Amélioration 1: Ajouter plus l'interactivité dans le site**
   - *Context*: Amélioration du calculateur de voyage, temps et météo.
   - *Objectif*: Améliorer le calculateur de voyage en intégrant des fonctionnalités avancées telles que le calcul précis du temps de voyage, l'estimation des conditions météorologiques spatiales et la planification d'itinéraires.
   - *Plan d'action*: 1. Effectuer une analyse approfondie des besoins des voyageurs spatiaux en matière de calcul de voyage, en tenant compte des différentes destinations spatiales, des véhicules spatiaux disponibles et des préférences des utilisateurs.
2. Identifier les fonctionnalités clés à intégrer dans le calculateur de voyage, telles que le calcul précis du temps de voyage en fonction de la distance et de la vitesse, l'estimation des conditions météorologiques spatiales en cours de route, et la suggestion d'itinéraires alternatifs en cas de conditions météorologiques défavorables.
3. Concevoir et mettre en œuvre une interface conviviale et intuitive pour le calculateur de voyage, permettant aux utilisateurs de saisir facilement leurs destinations, leurs dates de voyage et leurs préférences, et de visualiser rapidement les résultats.
4. Intégrer des données météorologiques en temps réel provenant de sources fiables pour fournir des informations précises sur les conditions météorologiques dans l'espace, y compris les tempêtes solaires, les éruptions solaires et les radiations cosmiques.
5. Effectuer des tests utilisateurs pour évaluer l'efficacité et l'exactitude du calculateur de voyage, ainsi que la convivialité de l'interface utilisateur, et recueillir les retours des utilisateurs pour apporter des améliorations si nécessaire.
6. Continuer à mettre à jour et à améliorer le calculateur de voyage en fonction des nouvelles avancées technologiques dans le domaine spatial et des retours des utilisateurs, afin de garantir une planification de voyage précise et fiable pour les voyageurs spatiaux.

---

# Contributions

Si vous êtes intéressé à aborder l'un des problèmes mentionnés ou à contribuer avec des idées pour les prochaines étapes, vous pouvez me contacter via les liens ci-dessous.

---

# Remerciements

Je tiens à exprimer ma sincère gratitude envers Pierre Danaës, dont la disponibilité constante et la précision ont grandement contribué à la réalisation de ce projet. Son aide précieuse a transformé cette expérience en une aventure épique.

## 🟣"Tout grand voyage commence par un simple pas" (Bouddha) 🟣
