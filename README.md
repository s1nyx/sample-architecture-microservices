# 🚀 Sample Architecture Microservices (temporaire)


Ce projet est construit avec des technologies modernes telles que Docker et Docker Compose, et il utilise une architecture en microservices pour séparer les différentes fonctionnalités de l'application en différents services gérables séparément.

## 📦 Prérequis

Avant de commencer, assurez-vous d'avoir installé les éléments suivants sur votre ordinateur:

- Docker
- Docker Compose

## 🚀 Démarrage

Pour démarrer le projet, il suffit d'exécuter le script `start.sh`:

```bash
./start.sh
```


Ce script démarrera tous les services définis dans le fichier `docker-compose.yml` et les connectera au réseau Docker défini. Une fois les services démarrés, vous pouvez accéder à l'application en vous connectant à `http://localhost:8000` dans votre navigateur.

## 🛠️ Configuration

Si vous souhaitez effectuer des modifications à la configuration, vous pouvez le faire dans le fichier `docker-compose.yml`. Ce fichier définit les services, les volumes, les ports exposés, les dépendances, et les variables d'environnement pour chaque service.

## 📚 Documentation

Pour plus d'informations sur les différents services et comment ils fonctionnent ensemble, consultez la documentation complète dans le répertoire `docs`.