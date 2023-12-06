#!/usr/bin/env bash

declare -A aluno
declare -A nota

aluno[Lucas]="Lucas Lin"
aluno[Gabriel]="Gabriel Zaram"
aluno[Kelvin]="Kelvin Zatram"
aluno[Dickstra]="Dickstra Salvatori"
aluno[Guiberson]="Guiberson Alvarez"

nota[Lucas]=10
nota[Gabriel]=9
nota[Kelvin]=8
nota[Dickstra]=7
nota[Guiberson]=6

echo "
Indentificadores dos alunos: ${!aluno[*]}

Nomes: ${aluno[*]}

Notas: ${nota[*]}"

exit 0
