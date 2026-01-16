# 1. Architecture Microservices pour le système de bibliothèque

## Statut

Accepté

## Contexte

[cite_start] Le système de bibliothèque doit gérer des domaines fonctionnels distincts (emprunts, réservations, notifications)[cite: 31]. [cite_start] Le système doit être hautement scalable et maintenable. Une architecture monolithique risque de devenir difficile à déployer et à faire évoluer si un module (ex: notifications) nécessite plus de ressources que les autres.

## Décision

Adopter une **architecture Microservices**. Chaque domaine fonctionnel (Catalogue, Utilisateurs, Emprunts, Notifications) sera un service déployable indépendamment.

## Alternatives envisagées

* **Monolithe Modulaire :** Rejeté car bien que plus simple au début, il limite la scalabilité horizontale indépendante des modules critiques comme les "Notifications" lors de pics de charge.
* **SOA (Service Oriented Architecture) :** Rejeté car jugé trop lourd (ESB) pour la taille de l'équipe et les besoins actuels.

## Conséquences

* **Positives :** Scalabilité indépendante des services. Possibilité d'utiliser des technologies différentes par service si nécessaire.
* **Négatives :** Complexité accrue du déploiement et de la gestion des données distribuées (cohérence éventuelle).
