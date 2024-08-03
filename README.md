# Ansible and Zabbix
This is just a personal project that aims to summarize some of the DevOps topics I've been studying in order to understand how they fit together. The idea is to create a project, and as I learn new tools I will improve the project with new layers

## What did I use ?
The main idea was to use as much tools as I could:

- Vagrant
- Ansible
- Zabbix
- Nginx
- PostgreSQL
- Zabbix API
- Debian

## How does it work?

- Vagrant create 4 vms
- Ansible install and configure this vms
- 3 vms will work together (PostgreSQL + Zabbix Server + Nginx) for to form the infrastructure monitoring
- 1 vm of application
- Use Zabbix API to up the 3 Zabbix agents with out interface web
- Monitoring this Application with Glowroot


## The Goal
The Goal is improve this project with new tools like Docker, Terraform or ARM and Pipeline, maybe change Zabbix and use Opentelemetry, Prometheus, ELK to monitoring or GLowroot.