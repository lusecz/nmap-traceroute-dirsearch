#!/bin/bash
#by lusecz

echo "LEMBRE DE EXECUTAR COMO SUDO OU ROOT DIRETO"
echo "NMAP+TRACEROUTE & DIRSEARCH"

read -p "Digite o IP para NMAP+TRACEROUTE : " ip

echo "EXECUTANDO NMAP & TRACEROUTE"

echo "RESULTADO :" $ip
gnome-terminal --tab --title="Traceroute" -- bash -c 'traceroute '$ip';exec bash'
nmap $ip -sV


read -p "ESSE IP POSSUI SITE ?: y/n " quest

if [ "$quest" == "n" ]; then
    echo "FECHANDO A EXECUÇÃO DO PROGRAMA"
elif [ "$quest" == "y" ]; then
    read -p "DIGITE O SITE HTTP/HTTPS: " site
    dirsearch -u "$site"
else
    echo "Resposta inválida. Use 'y' ou 'n'."
fi