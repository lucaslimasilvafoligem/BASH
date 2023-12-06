#!/usr/bin/env bash

read -p "Digite um número: " numero1

read -p "Digite um número de operação: " numero2

[[ ${#numero1} -lt 1 ]] && echo "Faltou passar um valor" && exit 1

[[ ${#numero2} -lt 1 ]] && echo "Faltou passar um valor de operação" && exit 1

[[ ! $numero1 =~ ^[0-9]+$ ]] && echo "Foi passado algo diferente de um número no argumento 1" && exit 1

[[ ! $numero2 =~ ^[0-9]+$ ]] && echo "Foi passado algo diferente de um número no argumento 2" && exit 1

echo "$numero1+=$numero2 => $(( numero1 += $numero2 ))"

echo "$numero1-=$numero2 => $(( numero1 -= $numero2 ))"

echo "$numero1*=$numero2 => $(( numero1 *= $numero2 ))"

echo "$numero1/=$numero2 => $(( numero1 /= $numero2 ))"

echo "$numero1%=$numero2 => $(( numero1 %= $numero2 ))"

echo "Result: $numero1"

exit 0
