#!/usr/bin/env bash

declare -A gtas

declare -A data

lista=("Lucas" "Gabriel" "José" "Eduardo" "João")

compras="Pão Banana Biscoito Café"

for produto in $compras; do echo "Compra: "$produto; done


# Argumento passado na chamada do scripit
for argumento; do
	echo $argumento
done

for (( n = 1; n <= 10; n++)); do
	echo $n
done

for (( n = 1; n <= 10; n+=2 )) {
        echo "De dois em dois: $n"
}

for n in {a..f}{h..b}; do
	echo $n
done


jogos="cyberpunk gta6 rd2"
for v in $jogos; do
	echo $v
done

for n in ${!lista[@]}; do
	echo "Aluno $n --> ${lista[$n]}"
done

for nome in "${lista[@]}"; do
        echo -e $nome"\n"
done

for nome in "${lista[@]}"; do
        echo -e $nome"\n"
done

for n in {1..20..2}; do 
	>>arquivo$n
done

ls -lah

for n in {1..20..2}; do 
        rm arquivo$n
done

ls -lah

for f in arquivo*; do
	mv $f $f.txt
done

ls arq*

for n in {1..10}; do
	[[ $n -gt 5 ]] && break || echo $n
done

echo "---------------------"

for n in {1..10}; do
	[[ $n -lt 6 ]] && continue || echo $n
done

exit 0
