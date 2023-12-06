#!/usr/bin/env bash

clear

echo "O objetivo desse script é comparar o seu número como número '5'."
read -p "Insira um número de 1 a 10: " numero

# É um número
[[ ! $numero =~ ^[0-9]+$ ]] && echo "Tem de ser passado um número" && exit 1

#É um número entre 11 e 0
[[ $numero -le 0 || $numero -gt 10 ]] && echo "O número entre 11 e 0" && exit 1

# É igual a 5
[[ $numero -eq 5 ]] && echo "É igual a 5" && exit 0

# Número menor que 5
[[ $numero -lt 5 ]] && echo "É menor que 5" && exit 0

# Número maior que 5
[[ $numero -gt 5 ]] && echo "É maior que 5" && exit 0
