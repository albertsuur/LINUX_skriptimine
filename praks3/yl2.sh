#!/bin/bash
# Skript arvutab küpsisetordi valmistamiseks vajalike küpsisepakkide arvu.

echo -n "Aluskandiku pikkus (cm): "
read pikkus

echo -n "Aluskandiku laius (cm): "
read laius

echo -n "Küpsise pikkus (cm): "
read kylpikkus

echo -n "Küpsise laius (cm): "
read kylaius

echo -n "Tordi kihtide arv: "
read kihid

echo -n "Küpsiste arv ühes pakis: "
read pakk

alus=$(expr "$pikkus" \* "$laius")
kypsis=$(expr "$kylpikkus" \* "$kylaius")
kypsiseid=$(expr "$alus" / "$kypsis")
kokku=$(expr "$kypsiseid" \* "$kihid")
pakke=$(expr "$kokku" / "$pakk")

if [ "$(expr "$kokku" % "$pakk")" -ne 0 ]; then
    pakke=$(expr "$pakke" + 1)
fi

echo "Vaja on osta $pakke pakki küpsiseid."
