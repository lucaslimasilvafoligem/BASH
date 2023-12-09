#!/usr/bin/env bash

n=0
while [[ $n -lt 11 ]]; do
	echo $n
	((n+=1))
done

echo "---------------------------------"

while true; do
	[[ $n -lt 6 ]] && echo $n || break
	((n++))
done

echo "---------------------------------"

frutas=$"\nEscolha o alimento: "
select comida in pacoca cafe banana mortadela; do
	echo $comida
	[[ "mortadela" == $comida ]] && break
done

exit 0
