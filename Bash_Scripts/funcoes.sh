#!/usr/bin/env bash

read -p "Escreva o seu nome: " nome

function oi() {
	echo "Oi, $nome"
	echo "Gosto de $1"
}

xau() {
	echo "Tchau, $nome"
	echo "$1"
}

oi
xau

case $1 in
	1) nome=Goku  ;;
	2) nome=Saci  ;;
	3) nome=Cowboy;;
	*) nome=Fofao ;;
esac

oi Dormir

xau ';)'

function calcula() {
	echo ${FUNCNAME[0]}
	valor=$((2+2))
	echo $valor
	return $valor
}

calcula

exit 0
