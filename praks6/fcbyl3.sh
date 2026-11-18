#!/bin/bash
# Skript kasutab pesastatud tsükleid ja katkestab mõlemad break 2 abil.

for (( i=1; i<=3; i++ )); do
    echo "Välimine tsükkel: $i"

    for (( j=1; j<=10; j++ )); do
        echo "Sisemine tsükkel: $j"

        # Kui sisemine tsükkel jõuab arvuni 5, katkestame mõlemad tsüklid.
        if [ "$j" -eq 5 ]; then
            break 2
        fi
    done
done

echo "Mõlemad tsüklid on lõpetatud."
