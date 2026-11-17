#!/bin/bash
#
# reisi korraldamine
# reisijate arv
echo -n "Sisesta reisijate arv: "
read reisijate arv
# kohtade arv bussis
echo -n "sisesta kohtade arv bussides: "
read kohtade arv bussides
# 
# arvutused
#
# jagame inimesed busside vahel nii, et koik kohad bussides oleks taidetud 
bussid=$(($reisijad / $kohad))
# vaatame kui palju on neid, kes ei saanud kohta bussides - need on ule jaanud reisijad, 
# ehk jaagid, kui koik kohad on taidetud
ulejaanud=$(($reisijad % $kohad))
#
# kui on olemas ulejaanud reisijad, tuleb suurendada busside arvu 1 vorra
if test $ulejaanud -gt 0
then 
	# bussid muutuja vajab uledefineerimist, selle parast umbersalvestamiseks
	# ei kasuta $ marki, aga arvutamisel juba kasutame
	bussid=$(($bussid + 1))
fi
