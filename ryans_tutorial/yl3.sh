#!/bin/bash
# Skript väljastab kuupäeva, kellaaja ja jooksva kuu kalendri.

date +"Today is %A, %B %d, %Y"
date +"Time is %H:%M"
echo
date +"Calendar of %B %Y"
cal | tail -n 7
