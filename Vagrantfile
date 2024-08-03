# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "boxomatic/debian-12"
    vm1.vm.network "public_network", bridge: "wlp3s0", ip: "192.168.15.12"
    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "Zabbix Server"
    end
  end

  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "boxomatic/debian-12"
    vm2.vm.network "public_network", bridge: "wlp3s0", ip: "192.168.15.14"
    vm2.vm.provision "shell", path: "script1.sh", privileged: true
    vm2.vm.provider "virtualbox" do |vb|
      vb.name = "Banco de Dados"
    end
  end

  config.vm.define "vm3" do |vm3|
    vm3.vm.box = "boxomatic/debian-12"
    vm3.vm.network "public_network", bridge: "wlp3s0", ip: "192.168.15.16"
    vm3.vm.provision "shell", path: "script1.sh", privileged: true
    vm3.vm.provider "virtualbox" do |vb|
      vb.name = "Web"    
    end
  end

  config.vm.define "vm4" do |vm4|
    vm4.vm.box = "boxomatic/debian-12"
    vm4.vm.network "public_network", bridge: "wlp3s0", ip: "192.168.15.18"
    vm4.vm.provision "shell", path: "script1.sh", privileged: true
    vm4.vm.provider "virtualbox" do |vb|
      vb.name = "Aplicação"    
    end
  end


end