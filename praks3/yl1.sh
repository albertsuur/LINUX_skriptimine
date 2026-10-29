#!/bin/bash
# Skript küsib kasutaja ees- ja perekonnanime ning tervitab teda.

# Kuvame küsimuse ilma reavahetuseta.
echo -n "Sisesta oma ees- ja perenimi: "

# Loeme sisestatud eesnime ja perekonnanime eraldi muutujatesse.
read eesnimi perenimi

# Tervitame kasutajat tema ees- ja perekonnanimega.
echo "Tere tulemast, $eesnimi $perenimi"
