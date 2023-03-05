# Utilisez l'image Python officielle comme image de base
FROM python:3.9-slim-buster

# Définissez le répertoire de travail de l'application
WORKDIR /app

# Copiez les fichiers de l'application dans l'image
COPY . .

# Installez les dépendances nécessaires pour l'application
RUN pip install --no-cache-dir -r requirements.txt

# Démarrez l'application lorsque le conteneur démarre
CMD ["python", "app.py"]
