# Projet ECF-FrontDWWM-2024

## À propos

- [Projet ECF-FrontDWWM-2024](#projet-ecf-frontdwwm-2024)
  - [À propos](#à-propos)
  - [Ressources](#ressources)
- [Accès au Site](#accès-au-site)
- [Technologies Utilisées:](#technologies-utilisées)
  - [Technologies d'organisation du projet:](#technologies-d'organisation-du-projet)
  - [Front-end:](#front-end)
  - [Back-end:](#back-end)
  - [Base de données:](#base-de-données)
- [Installation des Frameworks et des bibliothèques](#installation-des-frameworks-et-des-bibliothèques)
  - [Front-end:](#front-end)
  - [Back-end:](#back-end)
  
- [Principaux Problèmes Rencontrés](#principaux-problèmes-rencontrés)
- [Prochaines étapes](#prochaines-étapes)
- [Contributions](#contributions)
- [Remerciements](#remerciements)
  
---

## À propos

Le projet ECF-FrontDWWM-2024 est une application web pour l'hébergement de projets et de portfolios. Son objectif est de répondre aux besoins des professionnels du développement et de divers domaines, en leur permettant de présenter leurs travaux et de découvrir d'autres projets.

---

## Ressources

- Enregistrement de nouveaux utilisateurs
- Connexion des utilisateurs existants
- Profil utilisateur
- Explorer les projets

# Accès au Site

Le site est disponible sur localhost. Vous pouvez y accéder via l'URL suivante :

[ECF-FrontDWWM-2024](http://localhost:8888)

---

# Technologies Utilisées:

## Technologies d'organisation du projet:
- La modele[Figma](https://www.figma.com/)
  - Maquetage Figma pour Desctop
  - Maquetage Figma pour Ipad 768 * 981
  - Maquetage Figma pour Iphone 14 Pro & 15 Pro 393 * 852
- Organisation de projet: [Trello](https://trello.com/b/Y8B1iAkv/conduite-de-projet)

---

## Front-end:
- Langage de Programmation: [HTML] [CSS] [JavaScript]
- Framework: [Bootstrap 5]

---

## Back-end:
- Langage de Programmation: [JavaScript]
- Framework: [Node.JS]
- Bibliothèque:[express][cors][nodemon]

---

## Base de données :
- Base de Données: [MySQL]
- PhpMyAdmin: [PhpMyAdmin]
  
---

# Installation des Frameworks et des bibliothèques

## Front-end:

- Bootstrap:
  Brancher le lien [Bootstrap](<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">) dans index.html

## Back-end:

1. Instale o Python através do [python.org]
2. Abra o terminal do Windows
3. Execute o comando `pip install` seguido do nome da biblioteca
4. Caso não funcione, garanta a instalação do pip usando: `python -m ensurepip --default-pip`

### DJANGO:
- Django:
  `pip install django`

- Django REST Framework:
  `pip install djangorestframework`

- django-allauth:
  `pip install django-allauth`

### Autenticação e Autorização:
- rest_framework_simplejwt:
  `pip install djangorestframework-simplejwt`

### AWS:
- boto3:
  `pip install boto3`
  Documentação:
  
- drf_yasg:
  `pip install drf-yasg`

### Outros:
- google-auth:
  `pip install google-auth`

---

# Principaux Problèmes Rencontrés

Dans cette section, nous mettons en évidence quelques-uns des défis auxquels nous avons été confrontés lors du développement du projet. Ce sont des points qui nécessitent une attention et des efforts supplémentaires pour améliorer la qualité et l'efficacité du projet.

1. **Problema 1: Integração das bibliotecas drf-social-oauth2**
   - *Contexto*: Primeiramente, tentamos implementar a autenticação via Google pela biblioteca [drf-social-oauth2].
   - *Impacto*: Perdemos alguns dias até que a parte do back-end de Login e Registro estivesse totalmente finalizada.
   - *Possíveis Soluções*: Migramos para a biblioteca [django-allauth].

2. **Problema 2: Obtenção do token de acesso ao logar via Google ou GitHub com a biblioteca Django-Allauth**
   - *Contexto*: Usando a biblioteca django-allauth, não conseguimos obter o token de acesso.
   - *Impacto*: Isso atrapalhou a integração entre front-end e back-end.
   - *Possíveis Soluções*: Comentamos essa parte do código pois levaria mais tempo para implementar a função, removemos o botão de login do google que fazia parte do protótipo para não confundir o usuário.

---

# Prochaines étapes

Visto que este é um projeto relativamente curto, pensamos em algumas possíveis implementações para o futuro.

 **Melhoria 1: Gerar dashboards de tecnologias utilizadas e de busca por tags específicas**
   - *Contexto*: Por se tratar de uma plataforma que pode promover contratações, podemos explorar melhor algumas funcionalidades.
   - *Objetivo*: Acompanhar as tendências de mercado e atualizar profissionais e recrutadores para um melhor desenvolvimento profissional.
   - *Plano de Ação*: Implementar um banco de dados de registros de pesquisas, executar consultas SQL, gerar dashboards para usuários acompanharem.

 **Melhoria 2: Ampliar formatos de arquivos que podem ser feitos uploads**
   - *Contexto*: Em uma época de crescimento do mercado de TI, diferentes desenvolvedores podem usar formatos de arquivos diversos.
   - *Objetivo*: Ampliar o leque de opções para formatos de arquivos.
   - *Plano de Ação*: Preparação de um banco de dados não relacional, implementações de front-end e back-end.

**Melhoria 3: Integração com IA**
   - *Contexto*: Em uma época de grande volume de dados e bibliotecas de Machine Learning, podemos integrar nosso site para otimizações.
   - *Objetivo*: Integração com IA para recomendações de profissionais para os recrutadores aproveitarem melhor a plataforma, oferecendo recomendações para usuários cruzando dados como: perfil profissional, experiências, tendências.
   - *Plano de Ação*: Primeiro ter um banco de dados bem estruturado, utilizar APIs que possam ser integradas. Fazer por meio da tecnologia mais adequada (Linear regression, SVM, DecisionTree ou até Deep Learning).

---

# Contributions

Se você estiver interessado em abordar algum dos problemas mencionados ou contribuir com ideias para os próximos passos, Pode entrar em contato com os desenvolvedores  pelos links abaixo.

---


# Remerciements

A SQUAD-2 agradece a toda equipe do OrangeJuice e Fcamara que disponibilizaram profissionais gabaritados e muito gentis para nos acompanhar nesse processo. Ao nosso Padrinho Lucas Moreira sempre solícito e objetivo, à Fabiana Martins por desenvolver um protótipo lindo e bem organizado, e à Mariana Medanha do marketing que nos envolveu nessa hackathon como uma jornada épica. 

## 🧡"Tout grand voyage commence par un simple pas" (Bouddha) 🧡
