#!/bin/bash

# Defina a senha que você deseja usar
PASSWORD="password"

# Use o comando 'expect' para passar a senha automaticamente
sudo -u postgres bash -c "expect << EOF
spawn createuser --pwprompt zabbix
expect \"Enter password for new role:\"
send \"$PASSWORD\r\"
expect \"Enter it again:\"
send \"$PASSWORD\r\"
expect eof
EOF"
