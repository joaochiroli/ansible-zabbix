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
- 3 vms will work together (PostgreSQL + Zabbix Server + Nginx)
- Use Zabbix API to up the 3 Zabbix agents with out interface web


## The Goal
The Goal is create a environment with Ansible and explore Zabbix API


#### Hosts 

```
Zabbix Server - 192.168.15.8
DB - 192.168.15.10
Nginx - 192.168.15.12
```

#### Steps to execute


- Run
    ```
    ansible-playbook zabbix.yml
    ```

- Configure Web with correct ips of Database and Zabbix Server


- After Run
    ```
    Access the web pag and do the configurations.
    Edit the file vi /etc/zabbix/web/zabbix.conf.php
    Delete $ZBX_SERVER_NAME = '';
    Add $ZBX_SERVER = '192.168.15.8';
    Restart ningx service
    ```
- Execute 
    ```
    ansible-playbook playbook2.yml
    ```

- Create zabbix hosts with script
    ```
    chmod +x zabbix_script.sh
    ./zabbix_script.sh
    ```

<p align="center">
  <img src="https://github.com/user-attachments/assets/af6c9ad4-3273-407a-91ba-300cec175633" width="600"/>
</p>
    
<p align="center">
  <img src="https://github.com/user-attachments/assets/6bc53c01-45cb-494d-9e1c-286842a082e2" width="600"/>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/4a78f02e-839c-431a-980e-fa10c5b494c5" width="600"/>
</p>
