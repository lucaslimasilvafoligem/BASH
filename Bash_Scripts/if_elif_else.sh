#!/usr/bin/env bash

read -p "Escolha uma extensão: " escolha

if ls *$escolha &> /dev/null; then
	echo "Status $? - Verdadeiro"
elif ls banana &> /dev/null; then
	echo "BANANA"
else
	echo "Status $? - Falso"
	./if_elif_else.sh
fi

exit 0
