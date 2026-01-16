# 3. Authentification et Autorisation via OAuth2/JWT

## Statut

Accepté

## Contexte

Le système est distribué (Microservices). [cite_start] Nous devons sécuriser l'accès aux API pour les bibliothécaires et les adhérents[cite: 35]. L'utilisation de sessions serveur classiques est difficile à gérer dans un environnement distribué sans état (stateless).

## Décision

Utiliser le protocole **OAuth2** avec des jetons **JWT (JSON Web Tokens)** pour l'authentification. Un service d'identité centralisé (Identity Provider) délivrera les tokens.

## Alternatives envisagées

* **Sessions HTTP (Cookies) :** Rejeté car nécessite un stockage de session partagé (ex: Redis) et couple les services à ce stockage, compliquant la scalabilité.
* **Basic Auth :** Rejeté car non sécurisé pour transmettre les informations d'identification à chaque requête sans chiffrement fort permanent, et ne gère pas les scopes d'autorisation finement.

## Conséquences

* **Positives :** Architecture Stateless (les services n'ont pas besoin de connaitre l'état de connexion). Propagation facile de l'identité entre microservices.
* **Négatives :** Difficulté de révoquer un token JWT avant son expiration (nécessite une liste noire ou des tokens de courte durée).
