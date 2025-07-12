# Étape 1 : image de base
FROM node:18

# Étape 2 : créer le dossier de travail
WORKDIR /app

# Étape 3 : copier les fichiers
COPY package.json .
COPY app.js .

# Étape 4 : installer les dépendances
RUN npm install

# Étape 5 : exposer le port
EXPOSE 3000

# Étape 6 : lancer l'application
CMD ["npm", "start"]
