# Projet ECF-FrontDWWM-2024

## Figma

## Trello [voir ici](https://trello.com/b/Y8B1iAkv/conduite-de-projet)

## Les etapes

### 1 Maquetage Figma pour Desctop 

### 2 Maquetage Figma pour Ipad 768 * 981

### 3 Maquetage Figma pour Iphone 14 Pro & 15 Pro 393 * 852

### 4 HTML

### 5 CSS

### 6 CSS Framework

### 7 JavaScript

### 8 Backend API

### 9 SQL

# **Orange Portfólio**🍊

## Índice

- [Projet ECF-FrontDWWM-2024](#projet-ecf-frontdwwm-2024)
  - [Figma](#figma)
  - Trello [voir ici](https://trello.com/b/Y8B1iAkv/conduite-de-projet)
  - [Les etapes](#les-etapes)
    - [1 Maquetage Figma pour Desctop](#1-maquetage-figma-pour-desctop)
    - [2 Maquetage Figma pour Ipad 768 \* 981](#2-maquetage-figma-pour-ipad-768--981)
    - [3 Maquetage Figma pour Iphone 14 Pro \& 15 Pro 393 \* 852](#3-maquetage-figma-pour-iphone-14-pro--15-pro-393--852)
    - [4 HTML](#4-html)
    - [5 CSS](#5-css)
    - [6 CSS Framework](#6-css-framework)
    - [7 JavaScript](#7-javascript)
    - [8 Backend API](#8-backend-api)
    - [9 SQL](#9-sql)
- [**Orange Portfólio**🍊](#orange-portfólio)
  - [À propos](#À propos)
  - [Ressources](#Ressources)
  - [Recursos](#recursos)
- [Acesso ao Site](#acesso-ao-site)
- [Technologies Utilisées:](#tecnologias-utilizadas)
  - [Tecnologias de organização do projeto:](#tecnologias-de-organização-do-projeto)
  - [Back-end:](#back-end)
  - [Front-end:](#front-end)
  - [Base de données:](#banco-de-dados-cloud-e-documentação-)
- [Instalando Frameworks e bibliotecas](#instalando-frameworks-e-bibliotecas)
  - [Back-end:](#back-end-1)
    - [DJANGO:](#django)
    - [Autenticação e Autorização:](#autenticação-e-autorização)
    - [AWS:](#aws)
    - [Outros:](#outros)
  - [Front-end:](#front-end-1)
- [Como Rodar os Testes](#como-rodar-os-testes)
  - [Back-end](#back-end-2)
    - [Execute todos os testes](#execute-todos-os-testes)
- [Principais Problemas Enfrentados](#principais-problemas-enfrentados)
- [Próximos Passos](#próximos-passos)
- [Contribuições](#contribuições)
- [Integrantes (por ordem alfabética):](#integrantes-por-ordem-alfabética)
- [Agradecimentos](#agradecimentos)
  - [🧡"Toda grande caminhada começa com um simples passo" (Buda).🍊](#toda-grande-caminhada-começa-com-um-simples-passo-buda)

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
- Le modele[Figma](https://www.figma.com/)
- Organisation de projet: [Trello](https://trello.com/b/Y8B1iAkv/conduite-de-projet)

---

## Front-end:
- Langage de Programmation: [HTML] [CSS][JavaScript]
- Framework: [Bootstrap 5]

---

## Back-end:
- Langage de Programmation: [JavaScript]
- Framework: [Node.JS]
- Bibliothèque:[express][cors][nodemon]

---



## Base de données :
- Banco de Dados: [MySQL]
-  Cloud: [boto3]
-  Documentação: [drf_yasg]
- Serviços Cloud: [EC2] [RDS] [S3] [SNS]
---

# Instalando Frameworks e bibliotecas

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

## Front-end:
- React e React Router Dom:
  Pré-requisitos:
  Node.js e npm instalados.
  Instalação:
  Abra o terminal na raiz do seu projeto.
  Execute o seguinte comando para instalar as dependências:
  npm install

# Como Rodar os Testes

Para garantir a integridade e a funcionalidade do projeto, são fornecidos testes automatizados. Siga as instruções abaixo para executar os testes.

## Back-end
### Execute todos os testes
`python manage.py test`

---

# Principais Problemas Enfrentados

Nesta seção, destacamos alguns dos desafios que enfrentamos durante o desenvolvimento do projeto. Estes são pontos que requerem atenção e esforços adicionais para melhorar a qualidade e a eficiência do projeto.

1. **Problema 1: Integração das bibliotecas drf-social-oauth2**
   - *Contexto*: Primeiramente, tentamos implementar a autenticação via Google pela biblioteca [drf-social-oauth2].
   - *Impacto*: Perdemos alguns dias até que a parte do back-end de Login e Registro estivesse totalmente finalizada.
   - *Possíveis Soluções*: Migramos para a biblioteca [django-allauth].

2. **Problema 2: Obtenção do token de acesso ao logar via Google ou GitHub com a biblioteca Django-Allauth**
   - *Contexto*: Usando a biblioteca django-allauth, não conseguimos obter o token de acesso.
   - *Impacto*: Isso atrapalhou a integração entre front-end e back-end.
   - *Possíveis Soluções*: Comentamos essa parte do código pois levaria mais tempo para implementar a função, removemos o botão de login do google que fazia parte do protótipo para não confundir o usuário.

---

# Próximos Passos

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

# Contribuições

Se você estiver interessado em abordar algum dos problemas mencionados ou contribuir com ideias para os próximos passos, Pode entrar em contato com os desenvolvedores  pelos links abaixo.

---
# Integrantes (por ordem alfabética): 

- [Felipe Siqueira](https://github.com/Fesids)([LinkedIn](https://www.linkedin.com/in/felipe-siqueira-de-sousa-28a5951b5))
- [Iago Santos](https://github.com/iagoreal)([LinkedIn](https://www.linkedin.com/in/iago-dos-santos-vila-real-4513aa255/))
- [Ian Périgo](https://github.com/IanPerigoVianna)([LinkedIn](https://www.linkedin.com/in/ianperigo))
- [Thaís Siqueira](https://github.com/Thaisraie)([LinkedIn](https://www.linkedin.com/in/thaisqusi/))

# Agradecimentos

A SQUAD-2 agradece a toda equipe do OrangeJuice e Fcamara que disponibilizaram profissionais gabaritados e muito gentis para nos acompanhar nesse processo. Ao nosso Padrinho Lucas Moreira sempre solícito e objetivo, à Fabiana Martins por desenvolver um protótipo lindo e bem organizado, e à Mariana Medanha do marketing que nos envolveu nessa hackathon como uma jornada épica. 

## 🧡"Toda grande caminhada começa com um simples passo" (Buda).🍊
