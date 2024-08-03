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

## How does it work?

- Vagrant create 3 vms
- Ansible install and configure this vms
- 3 vms will work together (PostgreSQL + Zabbix Server + Nginx) for to form the infrastructure monitoring
- 1 vm of application
- Use Zabbix API to up the 4 Zabbix agents with out interface web


## The Goal
The Goal is create a environment with Ansible and explore Zabbix API
