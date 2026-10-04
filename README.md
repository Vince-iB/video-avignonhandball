# Vidéo Avignon Handball - V0.0.1

## Supabase
Exécuter uniquement `supabase/migration-v0.0.1.sql`. Le script utilise les tables existantes :
- `access_codes`
- `links`
- `link_access_codes`

## Variables Vercel
Ajouter les cinq variables présentes dans `.env.example`. La clé `SUPABASE_SECRET_KEY` reste uniquement côté serveur.

## Déploiement
Publier le contenu à la racine du dépôt GitHub. Vercel relancera automatiquement le déploiement.

## Domaine
Après validation du déploiement, ajouter `video.avignonhandball.fr` dans Vercel puis créer l'entrée DNS demandée dans o2switch.

## Administration
Route : `/admin`
