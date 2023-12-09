#!/usr/bin/env bash

read -p "Digite o nome de uma fruta: " fruta

fruta=${fruta^^}
qtd_fruta=${#fruta}
[[ qtd_fruta -eq 6 ]] && qtd_fruta=1 || qtd_fruta=0

if [[ $fruta == "BANANA" ]]; then
	echo "Status $? - Verdadeiro"
	echo "O nome da fruta é $fruta"
elif (( $qtd_fruta )); then
	echo "Status $? - Verdadeiro"
	echo "Possuem a mesma quantidade de cacaracteres"
else
	echo "Status $? - Falso"
fi

exit 0
