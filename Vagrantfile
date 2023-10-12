Vagrant.configure(2) do |config|
    config.vm.box = 'ubuntu/focal64'

    # Configuration of Web Servers
    config.vm.define "Web_Srv-1" do |web_srv1|
        web_srv1.vm.hostname = "websrv1"
        web_srv1.vm.network "private_network", ip: "192.168.200.101"
        web_srv1.vm.provider "virtualbox" do |vb|
            vb.memory = 512
        end
        web_srv1.vm.provision "shell", inline: <<-SHELL
        apt update -y
        apt install nginx -y
        
        SHELL

        web_srv1.vm.provision "shell", path: "sh/web.sh"
        web_srv1.vm.provision "shell", path: "sh/cert.sh"
        web_srv1.vm.provision "shell", inline: <<-SHELL
   #     sudo mkcert -key-file /vagrant/key.pem -cert-file /vagrant/cert.pem 192.168.200.200 192.168.200.99 192.168.200.100 192.168.200.101 192.168.200.102 backend
   #todoso 
   systemctl restart nginx
        SHELL

        
    end

    config.vm.define "Web_Srv-2" do |web_srv2|
        web_srv2.vm.hostname = "websrv2"
        web_srv2.vm.network "private_network", ip: "192.168.200.102"
        web_srv2.vm.provider "virtualbox" do |vb|
            vb.memory = 512
        end
        web_srv2.vm.provision "shell", inline: <<-SHELL
        apt update -y
        apt install nginx -y
        SHELL
        web_srv2.vm.provision "shell", path: "sh/web.sh"
        web_srv2.vm.provision "shell", path: "sh/cert.sh"
        web_srv2.vm.provision "shell", inline: <<-SHELL
        systemctl restart nginx
        SHELL
    end
    
    
    # Configuration of Load Balancer
    config.vm.define "load-balancer" do |loadbalancer|
        loadbalancer.vm.hostname = "load-balancer"
        loadbalancer.vm.network "private_network", ip: "192.168.200.100"
  ##      loadbalancer.vm.network "forwarded_port", guest: 80, host: 8080
        loadbalancer.vm.provider "virtualbox" do |vb|
            vb.memory = 512
        end

        loadbalancer.vm.provision "shell", inline: <<-SHELL
        apt update -y
        apt install nginx -y
        SHELL
    
        loadbalancer.vm.provision "shell", path: "sh/loadbalancer.sh"
        loadbalancer.vm.provision "shell", path: "sh/cert.sh"
        loadbalancer.vm.provision "shell", path: "sh/keep.sh"

    end
# Second LB for HA
    config.vm.define "load-balancer-2" do |loadbalancer2|
        loadbalancer2.vm.hostname = "load-balancer2"
        loadbalancer2.vm.network "private_network", ip: "192.168.200.99"

        loadbalancer2.vm.provider "virtualbox" do |vb|
            vb.memory = 512
        end

        loadbalancer2.vm.provision "shell", inline: <<-SHELL
        apt update -y
        apt install nginx -y
        SHELL
    
        loadbalancer2.vm.provision "shell", path: "sh/loadbalancer.sh"
        loadbalancer2.vm.provision "shell", path: "sh/cert.sh"
        loadbalancer2.vm.provision "shell", path: "sh/keep.sh"
    end


end