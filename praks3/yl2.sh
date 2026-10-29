#!/bin/bash
# Skript arvutab küpsisetordi valmistamiseks vajalike küpsisepakkide arvu.

# Küsime aluskandiku pikkuse sentimeetrites.
echo -n "Aluskandiku pikkus (cm): "
read pikkus

# Küsime aluskandiku laiuse sentimeetrites.
echo -n "Aluskandiku laius (cm): "
read laius

# Küsime ühe küpsise pikkuse sentimeetrites.
echo -n "Küpsise pikkus (cm): "
read kylpikkus

# Küsime ühe küpsise laiuse sentimeetrites.
echo -n "Küpsise laius (cm): "
read kylaius

# Küsime tordi kihtide arvu.
echo -n "Tordi kihtide arv: "
read kihid

# Küsime küpsiste arvu ühes pakis.
echo -n "Küpsiste arv ühes pakis: "
read pakk

# Arvutame aluskandiku pindala.
alus=$(expr "$pikkus" \* "$laius")

# Arvutame ühe küpsise pindala.
kypsis=$(expr "$kylpikkus" \* "$kylaius")

# Arvutame, mitu küpsist mahub ühele kihile.
kypsiseid=$(expr "$alus" / "$kypsis")

# Arvutame kõigi kihtide jaoks vajalike küpsiste arvu.
kokku=$(expr "$kypsiseid" \* "$kihid")

# Arvutame täispakkide arvu.
pakke=$(expr "$kokku" / "$pakk")

# Kui küpsiseid jääb üle, lisame ühe paki.
if [ "$(expr "$kokku" % "$pakk")" -ne 0 ]; then
    pakke=$(expr "$pakke" + 1)
fi

# Kuvame vajalike küpsisepakkide arvu.
echo "Vaja on osta $pakke pakki küpsiseid."
