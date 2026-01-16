# 4. Utilisation de RabbitMQ pour les notifications

## Statut

Accepté

## Contexte

Lorsqu'un emprunt est effectué ou un retard détecté, le système doit envoyer des notifications (email/SMS). [cite_start] L'envoi ne doit pas bloquer le processus principal d'emprunt (expérience utilisateur) et doit être résilient en cas de panne du service d'envoi[cite: 31].

## Décision

Utiliser un bus de messages **RabbitMQ** pour gérer les notifications de manière asynchrone. Le service "Emprunt" publie un événement `EmpruntCree` et le service "Notification" le consomme.

## Alternatives envisagées

* **Appel HTTP Synchrone (REST) :** Rejeté car si le serveur de mail est lent ou en panne, l'utilisateur est bloqué ou l'emprunt échoue.
* **Kafka :** Rejeté car RabbitMQ est plus simple à mettre en place pour une gestion de file d'attente classique (queueing) sans besoin de rétention longue durée des logs.

## Conséquences

* **Positives :** Découplage fort entre les services. Fiabilité (les messages sont stockés si le consommateur est hors ligne).
* **Négatives :** Infrastructure supplémentaire à maintenir (serveur RabbitMQ).
