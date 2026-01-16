# 2. Choix de la base de données relationnelle PostgreSQL

## Statut

Accepté

## Contexte

[cite_start] Le module de gestion des emprunts et des réservations nécessite une forte cohérence des données (ACID) pour éviter qu'un livre ne soit emprunté par deux personnes simultanément[cite: 55, 56].

## Décision

[cite_start]Utiliser **PostgreSQL** comme base de données principale pour les services "Emprunts" et "Catalogue"[cite: 58].

## Alternatives envisagées

* [cite_start]**MongoDB :** Rejeté car la gestion des transactions complexes entre entités liées (Livre <-> Utilisateur <-> Emprunt) est moins robuste et plus complexe à implémenter qu'en SQL[cite: 60].
* **MySQL :** Rejeté car PostgreSQL offre de meilleures fonctionnalités avancées (JSONB, indexation) jugées utiles pour l'évolution future du catalogue.

## Conséquences

* **Positives :** Garantie de l'intégrité des données transactionnelles. Standardisation SQL.
* **Négatives :** Moins flexible qu'une base NoSQL pour les changements de schéma fréquents.
