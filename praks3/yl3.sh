#!/bin/bash
# Skript arvutab täis busside arvu ja ülejäänud reisijate arvu.

echo -n "Mitu reisijat on grupis? "
read reisijad

echo -n "Mitu kohta on ühes bussis? "
read kohad

busse=$(expr "$reisijad" / "$kohad")
ulejaanud=$(expr "$reisijad" % "$kohad")

echo "Täielikult täidetud busse: $busse"
echo "Mahajäänud reisijaid: $ulejaanud"
