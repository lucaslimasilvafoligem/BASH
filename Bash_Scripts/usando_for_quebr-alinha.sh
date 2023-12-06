#!/usr/bin/env bash

aluno=("Lucas Gabriel" "José" "Eduardo" "João")

#IFS=$'\n'

for aluno in ${aluno[*]}; do
	echo $aluno
done

echo "Quantidade de alunos: ${#aluno[*]}"

exit 0
