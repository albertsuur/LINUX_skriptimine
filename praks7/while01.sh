#!/bin/bash
# Skript väljastab arvud 1 kuni 10 ja kontrollib, kas arv on paaris või paaritu.

for (( arv=1; arv<=10; arv++ )); do

    # Kontrollime, kas arv jagub kahega.
    if [ $((arv % 2)) -eq 0 ]; then
        echo "$arv - paarisarv"
    else
        echo "$arv - paaritu arv"
    fi

done
