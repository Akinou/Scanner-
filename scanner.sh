#!/bin/bash
read -p "Entrez l'adresse IP : " ip
for port in {1..65535}; do
    timeout 1 bash -c "echo '' > /dev/tcp/$ip/$port" 2>/dev/null && echo "Le port $port est ouvert"
done
