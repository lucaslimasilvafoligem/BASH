#!/usr/bin/env bash

clear
echo "Informações:"
echo "------------------------------------"
echo -n "Usuário: "
whoami
echo -n "Hostname: "
hostname
echo -n "Uptime: "
uptime -p
echo -n "Kernel: "
uname -rms
echo "------------------------------------"

