Vagrant.configure("2") do |config| 
    config.vm.box = "centos/7"
  
    config.vm.define "master" do |master|
      master.vm.hostname = "master.local" 
      master.vm.network "private_network", ip: "192.168.5.1"
      master.vm.provision "shell", path: "setup.sh"

    end 
    

  end 