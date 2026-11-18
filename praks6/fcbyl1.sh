#!/bin/bash
# Skript loendab 1 kuni 10 ja katkestab tsükli break abil arvul 7.

for (( i=1; i<=10; i++ )); do
    echo "$i"

    # Kui arv jõuab 7-ni, katkestame tsükli.
    if [ "$i" -eq 7 ]; then
        break
    fi
done

