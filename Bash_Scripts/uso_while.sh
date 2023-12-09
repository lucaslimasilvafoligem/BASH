#!/usr/bin/env bash

alimentos=("mortadela" "banana" "chocolate" "coxinha" "pao" "queijo")

while true; do
	for (( n = 0; n < ${#alimentos[*]}; n+=1 )) {
		echo "$((n+1)) ) ${alimentos[$n]}"
	}
	read -p "Escolha o número de um dos alimentos ou s/S para sair: " escolha
	escolha=${escolha// /}
        escolha=${escolha^^}
        [[ "$escolha" == "S" ]] && echo "Saindo....." && break
	[[ ${#escolha} -lt 1 ]] && echo "Escolha inválida" && break
	[[ ! $escolha =~ ^[0-9]+$ ]] && echo "Não é um número" && break
	echo "Você escolheu: ${alimentos[$(( escolha - 1 ))]}"
done

exit 0
