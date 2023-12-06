#!/usr/bin/env bash

msg="Informe um comando válido"

[[ $# -ne 1 ]] && echo $msg

echo $1

help test &> /dev/null

help $1 &> /dev/null

[[ $? -eq 0 ]] && echo "É builtin" || echo "Não é builtin"

exit 0
