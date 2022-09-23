[![Maintainability](https://api.codeclimate.com/v1/badges/db41a5c6bc4f9a836ade/maintainability)](https://codeclimate.com/github/beasabreu/projeto-esi/maintainability)

[![Test Coverage](https://api.codeclimate.com/v1/badges/db41a5c6bc4f9a836ade/test_coverage)](https://codeclimate.com/github/beasabreu/projeto-esi/test_coverage)

[![Coverage Status](https://coveralls.io/repos/github/beasabreu/projeto-esi/badge.svg?branch=main)](https://coveralls.io/github/beasabreu/projeto-esi?branch=main)

![Github Actions Build Status](https://github.com/beasabreu/projeto-esi/actions/workflows/ruby.yml/badge.svg)
# USP Share
A [USP Share](https://projeto-esi-heroku.herokuapp.com/) é uma aplicação web voltada para o compartilhamento entre alunos de arquivos, resumos, anotações, mapas mentais e materiais de matérias ministradas na USP, separado por campus e curso.

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