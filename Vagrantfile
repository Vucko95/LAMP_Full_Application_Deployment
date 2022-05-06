Vagrant.configure("2") do |config| 
    config.vm.box = "centos/7"
  
    config.vm.define "master" do |master|
      master.vm.hostname = "master.local" 
      master.vm.network "private_network", ip: "192.168.5.1"
      master.vm.network :forwarded_port, host: 8080, guest: 80
      master.vm.provision "file", source: "base.sql", destination: "/home/vagrant/base.sql"
      master.vm.provision "shell", path: "setup.sh"
      master.vm.provision "shell", path: "web.sh"
      master.vm.provision "file", source: "app.zip", destination: "/var/www/html/" 

    end 
    

  end 