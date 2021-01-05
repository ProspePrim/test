Vagrant.configure("2") do |config|
  config.ssh.insert_key = false

  # kub-master-1.
  config.vm.define "kub-master-1" do |km1|
    km1.vm.hostname = "kub-master-1"
    km1.vm.box = "geerlingguy/centos7"
    km1.vm.network :private_network, ip: "172.16.3.11"
    km1.vm.disk :disk, size: "50GB", primary: true
    
    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 2
    end
  end

  # kub-master-2.
  config.vm.define "kub-master-2" do |km2|
    km2.vm.hostname = "kub-master-2"
    km2.vm.box = "geerlingguy/centos7"
    km2.vm.network :private_network, ip: "172.16.3.12"
    km2.vm.disk :disk, size: "50GB", primary: true
    
    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 2
    end
  end

  # kub-master-3.
  config.vm.define "kub-master-3" do |km3|
    km3.vm.hostname = "kub-master-3"
    km3.vm.box = "geerlingguy/centos7"
    km3.vm.network :private_network, ip: "172.16.3.13"
    km3.vm.disk :disk, size: "50GB", primary: true
    
    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 2
    end
  end

  # kub-node-1.
  config.vm.define "kub-node-1" do |kn1|
    kn1.vm.hostname = "kub-node-1"
    kn1.vm.box = "geerlingguy/centos7"
    kn1.vm.network :private_network, ip: "172.16.3.14"
    kn1.vm.disk :disk, size: "50GB", primary: true
    
    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 2
    end
  end

  # kub-node-2.
  config.vm.define "kub-node-2" do |kn2|
    kn2.vm.hostname = "kub-node-2"
    kn2.vm.box = "geerlingguy/centos7"
    kn2.vm.network :private_network, ip: "172.16.3.15"
    kn2.vm.disk :disk, size: "50GB", primary: true
    
    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 2
    end
  end

  # kub-ingress-1.
  config.vm.define "kub-ingress-1" do |kin1|
    kin1.vm.hostname = "kub-ingress-1"
    kin1.vm.box = "geerlingguy/centos7"
    kin1.vm.network :private_network, ip: "172.16.3.16"
    kin1.vm.disk :disk, size: "50GB", primary: true
    
    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 2
    end
  end


end

Vagrant.configure("2") do |config|
 config.vm.provision "shell", inline: <<-SHELL
        yum update
        yum install -y python3
        yum install -y ansible
      SHELL
    config.vm.provision :ansible do |ansible|
      ansible.limit = "all"
      ansible.playbook = "provision.yaml"
 end
end