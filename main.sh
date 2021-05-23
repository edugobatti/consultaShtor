#!/usr/bin/env bash
# main.sh
#
# versão 1: solução naïve

arquivo="./cnpj.txt"

while IFS= read -r linha || [[ -n "$linha" ]]; do
    cnpj="${linha//[-..\/]/""}"
    echo $cnpj >> "/home/pi/Documents/consultaCnpjSh/resultado/$cnpj.txt"
    sleep 2
done < "$arquivo"
