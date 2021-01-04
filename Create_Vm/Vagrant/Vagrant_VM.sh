#!/bin/bash



mkdir vag_test_VM && cd vag_test_VM

vagrant init

cat <<EOF > Vagrantfile
Vagrant.configure("2") do |config|
  config.ssh.insert_key = false                                  

  # VirtualBox.
  config.vm.define "virtualbox" do |virtualbox|                       
    virtualbox.vm.hostname = "test-centos7"                         
    virtualbox.vm.box = "geerlingguy/centos7"                    
    virtualbox.vm.network :private_network, ip: "172.16.3.2"      

    config.vm.provider :virtualbox do |v|                         
      v.gui = false                                              
      v.memory = 1024                                            
      v.cpus = 1                                                 
    end

  # Python3 for ansible

    config.vm.provision "shell", inline: <<-SHELL                
        yum update
        yum install -y python3
      SHELL
  end

end
EOF

vagrant up
