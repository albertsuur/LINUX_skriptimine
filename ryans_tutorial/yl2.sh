#!/bin/bash
# Skript tervitab kasutajat suure algustähega kasutajanime abil.

echo -n "Tere, "
kasutaja=$(whoami)
kasutaja="${kasutaja^}"
echo -n "$kasutaja"
echo "!"
