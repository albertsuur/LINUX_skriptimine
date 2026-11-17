#!/bin/bash
#Skript väljastab iga sõna eraldi real kasutades semikoolonit.

text="koer;kass;hiir"

# Määran eraldajaks semikooloni.
IFS=';'

# Väljastan sõnad ükshaaval.
for sona in $text; do
	echo "$sona"
done
