#!/usr/bin/env bash

read -p "Digite uma string: " str

str_sem_espacos=${str// /}

[[ ${#str} -lt 1 ]] && echo "Nada foi digitado"&& exit 1

[[ ${#str_sem_espacos} -lt 1 ]] && echo "Só há espaços em branco" && exit 1

echo -e "Sua string é: $str, ela possuí ${#str} caracteres\n\nUsaremos essa string para criar arquivos e diretórios.\nSua string totalmente maiúscula ${str^^}, apenas a primeira ${str^}; totalmente minúscula ${str,,}, apenas a primeira letra ${str,}"

ls -lah

echo  "Criando 5 arquivos txt e adicionado o nome 'teste' para evitar sobrescrita"

echo $str{1..5}teste.txt
echo $str{1..5}teste
touch $str{1..5}teste.txt
mkdir $str{1..5}teste

ls -lah

echo "Consultas a arquivos e diretorios\\Consultando os que terminam com '.sh'"

echo *.sh

echo "Consultando apartir do caractere ${str:3: -1} ou a passado, echo $str"

string1=${str:3: -1}
string2=${str// /}

[[ string2 -lt 1 ]] && echo a* || echo string1*

echo "Outros exemplos: "
echo a*.sh
ls a*.sh
echo *.??
echo ??.sh
echo v[ar]*
echo a[rbcd]*.??
echo "Manipulando sua string ${str: -3}, ${str:2}, ${str:2: -1}"

echo "Removendo os arquivos txt e os diretorios"

rm $str{1..5}teste.txt
rm -r $str{1..5}teste

ls -lah
echo -e "Subistituição de String, subistituindo por 'Pão' e 'Linux'\n ${str/a/Pão}\n ${str/a/linux}"

exit 0
