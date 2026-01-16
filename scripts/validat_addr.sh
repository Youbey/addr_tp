#!/bin/bash

ADR_DIR="doc/adr"
REQUIRED_HEADERS=("## Statut" "## Contexte" "## Décision" "## Alternatives envisagees" "## Consequences")
EXIT_CODE=0

echo "Validation des ADR dans $ADR_DIR..."

for file in "$ADR_DIR"/*.md; do
    echo "Vérification de $file..."
    for header in "${REQUIRED_HEADERS[@]}"; do
        if ! grep -Fq "$header" "$file"; then
            echo "ERREUR: Le fichier $file manque la section '$header'"
            EXIT_CODE=1
        fi
    done
done

if [ $EXIT_CODE -eq 0 ]; then
    echo "Tous les ADR sont valides."
else
    echo "Certains ADR ne respectent pas le template."
fi

exit $EXIT_CODE