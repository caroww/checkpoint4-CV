# checkpoint4-CV

## Sujet

Concevoir une application de type CV en ligne, responsive, intégrant service et test. 

## Utilisation du dépôt

git clone https://github.com/caroww/checkpoint4-CV.git

composer install

yarn install

configurer .env.local

importer la base de données checkpoint4.sql

console doctrine:fixtures:load --group=UserFixtures --append

php bin/console doctrine:schema:update --force

configurer mailer pour envoie de mail de la partie contact


## Utilisation du TDD:

composer require --dev symfony/phpunit-bridge

php bin/phpunit

php bin/phpunit src/testsService/SlugifyTest.php


## Outils oraganisationnels :

- [Wireframe sur figma](https://www.figma.com/file/o25j8XGkbFlp3nk6zXFJsI/Untitled?node-id=0%3A1)

- [Product Backlog](https://docs.google.com/spreadsheets/d/16hesKSIYT8ZDQBLAv9XyRpjDN1AuEzzcYX-2u5iGHOw/edit?usp=sharing)

- [Modélisation de la DB](https://drive.google.com/file/d/1ldBDFDt9BsTRv1VbwfyIPwT7MVpMfxvi/view?usp=sharing)

