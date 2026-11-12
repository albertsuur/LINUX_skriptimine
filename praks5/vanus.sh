#!/bin/sh

echo "Sisesta oma vanus"

read vanus

if [ "$vanus" -gt 0 ] && [ "$vanus" -lt 11 ]
then
        echo "oled laps"
elif [ "$vanus" -ge 11 ] && [ "$vanus" -lt 18 ]
then
        echo "oled nooruk"
elif [ "$vanus" -ge 18 ] && [ "$vanus" -lt 63 ]
then
        echo "oled täiskasvanu"
elif [ "$vanus" -ge 63 ]
then
        echo "oled senior"
else
        echo "vigane sisend"
fi
