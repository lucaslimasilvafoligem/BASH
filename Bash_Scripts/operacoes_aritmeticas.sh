#!/usr/bin/env bash

echo "\
Operadores Aritméticos Básicos:
**              exponenciação
*, /, %         multiplicação, divisão, resto de divisão
+, -            adição, subtração
"


read -p "Sua expressão: " expressao

[[ ${#expressao} -lt 1 ]] && exit 1

let result1=$expressao

echo -e "Utilizando o comando let $expressao :\n$expressao= $result1"

(( result2 = $expressao ))

echo -e "Utilizando o comando composto (( $expressao )):\n$expressao= $result2"

echo -e "Utilizando a expressão aritmética $(( expressao ))"

declare -i var=$expressao

echo -e "Alterando atributo de inteiro declare -i var=$expressao: $var"

exit 0
