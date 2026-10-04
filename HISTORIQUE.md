# Historique des versions

## V0.0.1

- Initialisation Next.js, TypeScript et interface responsive.
- Accès public par code sans compte utilisateur.
- Affichage filtré des liens selon le code saisi.
- Ouverture et copie des liens YouTube, Facebook, Google Drive et autres.
- Administration sécurisée par identifiant et mot de passe serveur.
- Création, activation, désactivation et suppression des codes.
- Création, activation, désactivation et suppression des liens.
- Association d'un lien à plusieurs codes.
- Utilisation exclusive des tables existantes `access_codes`, `links` et `link_access_codes`.
- Migration SQL non destructive pour activer la sécurité RLS et retirer les accès publics.
