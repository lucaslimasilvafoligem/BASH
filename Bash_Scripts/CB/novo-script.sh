#!/usr/bin/env bash

editor="nano"

[[ $# -ne 1 ]] && echo "Erro, se faz necessário um argumento" && exit 1

[[ -f $1 ]] && echo "Esse arquivo já existe" && exit 1

echo '#!/usr/bin/env bash' > $1
chmod u+x $1
$editor $1

exit 0

