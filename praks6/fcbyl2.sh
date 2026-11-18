#!/bin/bash
# Skript küsib numbreid kuni kasutaja sisestab 0.
# Negatiivsed arvud jäetakse continue abil vahele.

while true; do
    echo -n "Sisesta number (0 lõpetab): "
    read arv

    # Kui sisestatakse 0, lõpetame tsükli.
    if [ "$arv" -eq 0 ]; then
        break
    fi

    # Kui arv on negatiivne, jätkame järgmise küsimusega.
    if [ "$arv" -lt 0 ]; then
        echo "Negatiivne arv jäetakse vahele."
        continue
    fi

    # Väljastame positiivse arvu.
    echo "Sisestasid positiivse arvu: $arv"
done

echo "Programm lõpetas töö."
