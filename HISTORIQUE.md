# Historique des versions

## V0.0.1
- Accès par code et administration.

## V0.0.2
- Catégories, dates et accès multicalégories.

## V0.0.3
- Refonte complète claire et compacte de l’administration.
- Navigation par onglets Contenus, Codes et Catégories.
- Tableaux responsives, recherche instantanée et indicateurs synthétiques.
- Création et modification dans des fenêtres dédiées.
- Modification complète des codes : libellé, code, état et catégories autorisées.
- Modification complète des contenus et catégories.
- Activation, désactivation et suppression depuis les listes.
- Retours visuels, états de chargement et confirmations de suppression.
- Interface publique éclaircie et cartes de contenus compactes.

## V0.0.5
- Liaison facultative d'un contenu à un match de la Régie.
- Sélection d'une rencontre existante et récupération du score.
- Récupération du logo et du nom du club adverse.
- Saisie manuelle de l'adversaire, du logo et du score si le match est absent.
- Vue utilisateur en liste de modules indépendants.
- Filtres par jour et catégorie, catégorie masquée lorsqu'elle est unique.
- Fond sombre conservé avec modules semi-sombres.


### V0.0.6
- Version de production consolidée depuis la V0.0.5.
- Aucun changement fonctionnel ni modification du schéma Supabase.

## V0.0.7
- Recherche instantanée des matchs par clubs, équipes et date.
- Plusieurs vidéos ou liens par événement avec titre facultatif, type, URL et ordre.
- Affichage domicile à gauche et extérieur à droite avec leurs logos respectifs.
- Une fiche par événement et une ligne par lien.
- Numéro de version affiché dans l'interface.


### V0.0.8
- Version de production consolidée depuis la V0.0.7.
- Numéro de version mis à jour dans l’interface.
- Aucun changement fonctionnel ni modification supplémentaire du schéma Supabase.


### V0.0.9
- Correctifs connexion admin et création des événements avec liens.

### V0.0.10
- Gestion automatique de l’erreur Supabase PGRST303 JWT issued at future.
- Nouvelles tentatives ciblées avant affichage d’une erreur.


### V0.0.11
- Suppression de l’erreur link_id nul lors de la création d’un événement.
- Le bouton de ligne est désactivé tant que l’événement n’existe pas.
- Le bouton général Enregistrer crée ensemble l’événement et ses liens.
