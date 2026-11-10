Le ruleset actif sur main impose une pull request et la réussite des checks « kraken / lint-test » et « kraken / build-push » avant toute fusion, sans contournement pour mon compte.
Sur chaque pull request, « kraken / lint-test » lance Ruff et les tests pytest : un test cassé bloque la fusion, comme vérifié avec la PR test-casse, puis sa correction rétablit les checks verts.
Après le lint et les tests, « kraken / build-push » vérifie la construction du Dockerfile : une erreur de build bloque aussi la fusion ; l’image est publiée sur GHCR uniquement sur main.
