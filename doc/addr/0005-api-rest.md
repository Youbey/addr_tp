# 5. Exposition des services via API REST

## Statut

Accepté

## Contexte

Le système doit être accessible par différentes interfaces (Web, Mobile, Automates de prêt). Une interface standard est nécessaire pour interagir avec les données.

## Décision

Exposer les fonctionnalités via des **API RESTful** utilisant le format JSON.

## Alternatives envisagées

* **GraphQL :** Rejeté pour l'instant car l'équipe maîtrise mieux REST et le besoin de requêtes complexes côté client est limité pour la V1.
* **SOAP :** Rejeté car trop verbeux et complexe (XML) par rapport à JSON.

## Conséquences

* **Positives :** Large compatibilité avec tous les clients HTTP. Facilité de mise en cache via HTTP caching.
* **Négatives :** Risque de "Over-fetching" (récupérer trop de données) comparé à GraphQL.
