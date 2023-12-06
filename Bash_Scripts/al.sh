#!/usr/bin/env bash

clear

echo "\ Exemplo de trabalho com arrays indexados"

frutas=("Banana" "Laranja" "Uva")
cores=("Amarelo" "Laranja" "Verde")

read -p "Digite um número entre 0 a 3: " numero

msg_erro="\nTem que ser um número entre 0 e 3!\n"

[[ ! $numero =~ ^[0-3]$ ]] && echo -e $msg_erro && exit 1

echo "Você escolheu ${frutas[${numero}]}, que tem a cor ${cores[${numero}]}"

exit 0
