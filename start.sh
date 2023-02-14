#!/bin/bash

# Installation de yarn via npm
echo "Installation de yarn via npm"
npm install -g yarn

# Liste des dossiers à ignorer
blacklist=(.* build)

# Récupération du chemin du répertoire courant
current_dir=$(pwd)

# Boucle sur chaque dossier dans le répertoire courant
for dir in $(find $current_dir -maxdepth 1 -type d); do
  # Vérification que le dossier n'est pas dans la blacklist
  if [[ ! " ${blacklist[@]} " =~ " $(basename $dir) " ]] && [ "$dir" != "$current_dir" ]; then    echo "Installation des dépendances dans le dossier $(basename $dir)"
    # Changement de répertoire pour exécuter yarn install
    cd $dir
    yarn install
    # Retour au répertoire courant
    cd $current_dir
  fi
done

echo "Installation des dépendances terminée"

# Lancement de l'application
echo "Lancement de l'application"
docker compose up --build -d