Vagrant.configure('2') do |config|
  config.vm.define "vm1" do |vm1|
  config.ssh.insert_key = false
    vm1.vm.box = "generic/debian12"
    vm1.vm.network "public_network", bridge: "wlp3s0", ip: "192.168.15.8"
    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "Zabbix Server"
      vb.memory = "1024"
    end
    vm1.vm.disk :disk, size: "10GB", primary: true
  end

  config.vm.define "vm2" do |vm2|
  config.ssh.insert_key = false
    vm2.vm.box = "generic/debian12"
    vm2.vm.network "public_network", bridge: "wlp3s0", ip: "192.168.15.12"
    vm2.vm.provider "virtualbox" do |vb|
      vb.name = "nginx"
      vb.memory = "1024"
    end
  end

  config.vm.define "vm3" do |vm3|
  config.ssh.insert_key = false
    vm3.vm.box = "generic/debian12"
    vm3.vm.network "public_network", bridge: "wlp3s0", ip: "192.168.15.10"
    vm3.vm.provider "virtualbox" do |vb|
      vb.name = "db"
      vb.memory = "1024"
    end
  end

end
