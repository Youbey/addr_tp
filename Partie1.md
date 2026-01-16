## Partie 1 : Étude théorique

**1. Qu'est-ce qu'un ADR ? Quels sont ses avantages par rapport à une documentation classique ?**
**Un ADR (Architecture Decision Record) est un fichier léger (souvent Markdown ou YAML) qui documente une décision d'architecture logicielle spécifique**.

* **Avantages :** Ils facilitent l'intégration des nouveaux membres (onboarding) et réduisent les risques lors de la maintenance en expliquant l'historique des décisions.

**2. Citez trois outils ou méthodes pour gérer les ADR. Comparez-les.**

* **adr-tools :** Un outil en ligne de commande (CLI) pour générer et gérer les ADR. *Avantage :* Rapide et scriptable. *Inconvénient :* Nécessite l'usage du terminal.
* **ADR Manager (VS Code) :** Une extension pour rédiger les ADR directement dans l'IDE. *Avantage :* Intégré au flux de travail du développeur. *Inconvénient :* Dépend de VS Code.
* **MADR (Markdown Template) :** Un gabarit standardisé en Markdown. *Avantage :* Universel et ne nécessite aucun logiciel spécifique. *Inconvénient :* Pas d'automatisation native de la numérotation.

**3. Pourquoi est-il important de documenter les alternatives et les conséquences d'une décision architecturale ?**
Documenter les alternatives permet de répondre à la question future "Pourquoi n'avons-nous pas choisi l'option X ?" et prouve que le choix était réfléchi. Pour les conséquences, il permet de gérer les compromis et de préparer l'équipe aux limitations techniques induites par la décision.

**4. Quels sont les risques liés à une mauvaise gestion des décisions d'architecture ?**
Les risques incluent la perte de contexte (oubli des raisons d'un choix), la "dérive architecturale" (le système s'éloigne de sa conception initiale), des difficultés à revenir en arrière, et une dette technique accrue due à des choix non justifiés^.
