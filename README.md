# Gestionnaire de Tâches avec Fastify et MongoDB

Ce projet est une application de gestion de tâches simple construite avec Fastify et MongoDB.

## Installation

Assurez-vous d'avoir Node.js et Docker installés sur votre machine.

1. Clônez ce dépôt :
   ```bash
   git clone https://github.com/votre-utilisateur/votre-projet.git
   cd votre-projet

2. Installez les dépendances :
    ```bash
    npm install

3. Lancez l'application avec Docker Compose :
    ```bash
    docker-compose up -d

## Configuration
- L'application utilise une base de données MongoDB.
- Assurez-vous que le service MongoDB est accessible à l'URL spécifiée dans app.js ou configurez-le avec une URL personnalisée.

## Utilisation
L'application expose des API REST pour la gestion des tâches. Vous pouvez utiliser des commandes curl ou tout autre client HTTP pour interagir avec ces API.

### Exemples de Commandes curl :

- Créer une nouvelle tâche :
    ```bash
    curl -X POST -H "Content-Type: application/json" -d '{"nom": "Tâche 1", "description": "Description de la tâche 1", "statut": "En cours", "dateCreation": "2023-12-08"}' http://localhost:{port}/tasks

- Récupérer toutes les tâches :
    ```bash
    curl http://localhost:{port}/tasks

- Récupérer une tâche par son ID :
    ```bash
    curl http://localhost:{port}/tasks/{task_id}

- Mettre à jour une tâche par son ID :
    ```bash
    curl -X PUT -H "Content-Type: application/json" -d '{"nom": "Tâche mise à jour", "description": "Description mise à jour", "statut": "Terminée", "dateCreation": "2023-12-09"}' http://localhost:{port}/tasks/{task_id}

- Supprimer une tâche par son ID :
    ```bash
    curl -X DELETE http://localhost:{port}/tasks/{task_id}

## Authors

- [@armanceau](https://www.github.com/armanceau) [![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/arthur-manceau/)

- [@Mathias002](https://www.github.com/Mathias002) [![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mathias-mousset-05b6bb230/)

- [@Noemiektz](https://www.github.com/Noemiektz) [![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/noemie-ktourza/)
