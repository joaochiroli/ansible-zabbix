#!/bin/bash

token=$(curl --silent --location 'http://192.168.15.12/api_jsonrpc.php' \
--header 'Content-Type: application/json' \
--data '{
    "jsonrpc": "2.0",
    "method": "user.login",
    "params": {
        "username": "Admin",
        "password": "zabbix"
    },
    "id": 1,
    "auth": null
}' | jq -r '.result')


echo "Quantos hosts serão adicionados?"
read numero_hosts

# Loop enquanto 'numero_hosts' for maior que 0
while [ $numero_hosts -gt 0 ]
do
    echo "Qual o hostname do servidor?"
    read hostname

    echo "Qual o IP do servidor?"
    read ip

    # Chamada ao API com curl
    curl --silent --location 'http://192.168.15.12/api_jsonrpc.php' \
    --header 'Content-Type: application/json' \
    --data "{
        \"jsonrpc\": \"2.0\",
        \"method\": \"hostgroup.get\",
        \"params\": {
            \"output\": [\"name\",\"groupid\"]
        },
        \"auth\": \"$token\",
        \"id\": 1
    }" | jq -r '.result[] | "[groupid: \"\(.groupid)\", name: \"\(.name)\"]"'

    echo "Qual o grupo esse servidor deve fazer parte? Coloque o número do groupid escolhido, exemplo: 6"
    read grupo

    # Chamada ao API com curl
    curl --silent --location 'http://192.168.15.12/api_jsonrpc.php' \
    --header 'Content-Type: application/json' \
    --data "{
        \"jsonrpc\": \"2.0\",
        \"method\": \"template.get\",
        \"params\": {
            \"output\": [\"name\",\"templateid\"]
        },
        \"auth\": \"$token\",
        \"id\": 1
    }" | jq -r '.result[] | "[templateid: \"\(.templateid)\", name: \"\(.name)\"]"'


    echo "Qual o template esse servidor deve ter? Coloque o número do templateid escolhido, exemplo: 10001"
    read template

    curl --silent --location 'http://192.168.15.12/api_jsonrpc.php' \
    --header 'Content-Type: application/json' \
    --data "{
    \"jsonrpc\": \"2.0\",
    \"method\": \"host.create\",
    \"params\": {
        \"host\": \"$hostname\",
        \"groups\": [
            {
                \"groupid\": \"$grupo\"
            }
        ],
        \"interfaces\": [
            {
                \"type\": \"1\",
                \"main\": \"1\",
                \"useip\": \"1\",
                \"ip\": \"$ip\",
                \"dns\": \"\",
                \"port\": \"10050\"
            }
        ],
        \"templates\": [
            {
                \"templateid\": \"$template\"
            }
        ]
    },
    \"auth\": \"$token\",
    \"id\": 1
    }" > /dev/null 2>&1

    echo -e "\nO host '$hostname' acabou de ser criado\n"

    # Decrementa o número de hosts restantes
    numero_hosts=$((numero_hosts - 1))
done

echo "Todos os hosts foram adicionados. Número de hosts restantes: $numero_hosts"