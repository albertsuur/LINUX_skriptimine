# arvutused
#
# jagame inimesed busside vahel nii, et koik kohad bussides oleks taidetud - sellega
# saame teada, palju busse on vaja
bussid=$(($reisijad / $kohad))
# vaatame, palju on need, kes ei saanud koha bussides - need on yle jaanud reisijad,
# ehk jaagid, kui koik kohad on taidetud
ylejaanud=$(($reisijad % $kohad))
#
# kui on olemas ylejaanud, tuleb suurendada busside arv 1 vorra
if test $ylejaanud -gt 0
then
    # bussid muutuja vajab ylddefineerimist, selle parast ymber salvestamiseks
    # ei kasuta $ marki, aga arvutamisel juba kasutame
    bussid=$(($bussid + 1))
fi
# tulemuste valjastamine
#
echo "Kokku on vaja $bussid taisbussi"
#
# skripti lopp
