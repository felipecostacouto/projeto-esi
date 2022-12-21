[![Maintainability](https://api.codeclimate.com/v1/badges/db41a5c6bc4f9a836ade/maintainability)](https://codeclimate.com/github/felipecostacouto/projeto-esi/maintainability)

[![Test Coverage](https://api.codeclimate.com/v1/badges/db41a5c6bc4f9a836ade/test_coverage)](https://codeclimate.com/github/felipecostacouto/projeto-esi/test_coverage)

[![Coverage Status](https://coveralls.io/repos/github/felipecostacouto/projeto-esi/badge.svg?branch=main)](https://coveralls.io/github/felipecostacouto/projeto-esi?branch=main&kill_cache=1)

![Github Actions Build Status](https://github.com/felipecostacouto/projeto-esi/actions/workflows/ruby.yml/badge.svg)
# USP Share
A [USP Share](https://projeto-esi-heroku.herokuapp.com/) é uma aplicação web voltada para o compartilhamento entre alunos de arquivos, resumos, anotações, mapas mentais e materiais de matérias ministradas na USP, separado por campus e curso.

# Pivotal Tracker
[Link para o pivotal Tracker](https://www.pivotaltracker.com/n/projects/2603039)

# Membros
Beatriz Abreu

Cesar Kenzo

Fabricio Kashino

Felipe Costa Couto

Henrique Tavares

Leonardo Sato

# Como executar

Dentro da pasta do projeto, executar

1) docker compose build

2) docker compose up

Executar os seguintes para certificar que está tudo certo:

1) docker compose exec web rake spec

2) docker compose exec web rake cucumber


Para inicializar os registros padrões do bando de dados, executar

1) rake db:migrate:reset

2) rake db:seed_fu
