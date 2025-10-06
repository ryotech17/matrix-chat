# Image Docker officielle de Docker (oui, Docker dans Docker)
FROM docker:27-dind

# Copie les fichiers de ton dépôt dans le conteneur
WORKDIR /app
COPY . /app

# Installe docker-compose
RUN apk add --no-cache docker-compose bash

# Lance le docker-compose à démarrage
CMD ["bash", "-c", "docker-compose up"]
