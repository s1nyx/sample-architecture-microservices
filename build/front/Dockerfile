# Utilisez l'image officielle de Node.js comme base
FROM node:14

# Créez un répertoire pour l'application Next.js
WORKDIR /app


# Installez les dépendances de l'application
RUN npm install

# Exposez le port 3000
EXPOSE 3000

# Définissez les commandes pour exécuter l'application
CMD ["npm", "run", "dev"]
