#!/usr/bin/env bash

read -p "Escreva o nome de uma fruta: " fruta

case $fruta in
	[Bb]an???|lara*) echo "$fruta é amarela"    ;;
	morango|uva[ao]) echo "$fruta é vermelho"  ;;
	abacate|pitanga) echo "$fruta é verde"     ;;
	*) echo "Não sei a cor da fruta $1";;
esac

exit 0
