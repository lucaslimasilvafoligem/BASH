#!/usr/bin/env bash

# Uso de recursão

n=$(( 0 + $1 ))
(( n++ ))
[[ $n -eq 11 ]] && echo "FIM!" && exit 0
echo "Seu n é $n e a entrada é $1"
./recursao.sh $n

