#!/bin/bash
# skript väljastab kõik kasutajanimed failist /etc/passwd.

for kasutaja in $(cut -d: -f1 /etc/psswd); do
	echo "Kasutaja: $kasutaja"
done
