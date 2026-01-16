
## Partie 4 : Analyse et discussion

**Réponses à intégrer dans le rapport**.

**1. Quels sont les avantages et limites des ADR pour votre projet ?**

* **Avantages :** Pour ce projet de bibliothèque qui se veut "maintenable", les ADR assurent que si l'équipe change, les raisons derrière l'utilisation de RabbitMQ ou PostgreSQL ne sont pas perdues. Cela structure la pensée lors de la conception.
* **Limites :** Le risque est la "surcharge documentaire". Si les décisions mineures sont documentées, le dossier devient illisible. Il faut de la discipline pour maintenir les statuts à jour (ex: passer un ADR à "Obsolète").

**2. Comment pourriez-vous automatiser la gestion des ADR ?**
On peut utiliser des **Github Actions** ou un bot. Par exemple, à chaque Pull Request qui touche au code d'infrastructure, le bot pourrait vérifier si un fichier a été ajouté dans `doc/adr/`. **On peut aussi utiliser des outils comme **`<span class="citation-25">adr-log</span>` pour générer automatiquement une table des matières dans le README lors du build.

**3. Proposez une amélioration au processus de rédaction des ADR.**
Instaurer une phase de **"Review d'ADR"** obligatoire avant l'implémentation. **L'ADR est soumis en tant que Pull Request (statut "En discussion" **). L'équipe valide l'ADR avant d'écrire la moindre ligne de code.
