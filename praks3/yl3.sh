#!/bin/bash
# Skript arvutab täis busside arvu ja ülejäänud reisijate arvu.

# Küsime reisijate arvu grupis.
echo -n "Mitu reisijat on grupis? "
read reisijad

# Küsime kohtade arvu ühes bussis.
echo -n "Mitu kohta on ühes bussis? "
read kohad

# Arvutame täielikult täidetud busside arvu.
busse=$(expr "$reisijad" / "$kohad")

# Arvutame, mitu reisijat jääb bussidesse mahutamata.
ulejaanud=$(expr "$reisijad" % "$kohad")

# Kuvame täis busside arvu.
echo "Täielikult täidetud busse: $busse"

# Kuvame ülejäänud reisijate arvu.
echo "Mahajäänud reisijaid: $ulejaanud"
