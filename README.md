# Ansible and Zabbix API
This is just a personal project that aims to create a Monitoring Infrastructure with Ansible and exlplore Zabbix API 

## What did I use ?
The main idea was to use as much tools as I could:

- Vagrant
- Ansible
- Nginx
- PostgreSQL with TimescaleDB
- Zabbix API
- Debian
- Bash

## How does it work?

- Vagrant create 3 vms
- Ansible install and configure this vms
- 3 vms will work together (PostgreSQL + Zabbix Server + Nginx) for to form the infrastructure monitoring
- Use Zabbix API to up the 3 Zabbix agents with out interface web


## The Goal
The Goal is create a environment with Ansible and explore Zabbix API



#### Installation

```
 Acessar a página Web e realizar as configurações.
 Além disso editar o arquivo vi /etc/zabbix/web/zabbix.conf.php
 Exlcuir $ZBX_SERVER_NAME = '';
 Adicionar $ZBX_SERVER = '192.168.15.8';
 Dar um restart no ningx

```