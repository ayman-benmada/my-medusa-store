# Guide d'installation et de démarrage

> ⚠️ **Ce README est en cours de rédaction et susceptible d'évoluer. Certaines informations peuvent ne pas être à jour.**

## 1. Exposer le port Postgres (installation uniquement)

Ouvrir le port `5432` pour Postgres.

---

## Installation du projet Medusa.js

1. Exposez le port Postgres : `5432`.

2. Démarrer uniquement le conteneur Postgres :
   ```bash
   npx create-medusa-app@latest --db-url "postgres://user:pass@localhost:5432/my-medusa-store"
   ```

---

## Réinitialisation la base de données

1. Démarrer uniquement le conteneur Postgres :
   ```bash
   docker compose up -d postgres
   ```
2. Se connecter à la base de données :
   ```bash
   docker exec -it my-medusa-store-db psql -U user -d postgres
   ```
3. Supprimer la base de données :
   ```sql
   DROP DATABASE "my-medusa-store";
   ```
4. Créer la base de données :
   ```sql
   CREATE DATABASE "my-medusa-store";
   ```
5. Accéder au conteneur backend :
   ```bash
   make back
   ```
6. Lancer les migrations :
   ```bash
   npx medusa db:migrate
   ```

---

## Seeders

```bash
make back
yarn seed
```
---

## Création d'un utilisateur back-office

```bash
npx medusa user --email admin@medusa.com --password pass
```

---

## 6. Mettre à jour la clé publique Medusa

Mettre à jour la variable d'environnement `NEXT_PUBLIC_MEDUSA_PUBLISHABLE_KEY`.

> La valeur est à retrouver dans le back-office. Voir la documentation officielle : [Medusa Publishable API Keys](https://docs.medusajs.com/user-guide/settings/developer/publishable-api-keys)

---

*Ce document est amené à évoluer. Merci de vous référer régulièrement à la dernière version.*





