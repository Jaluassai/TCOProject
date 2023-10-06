Vagrant.configure(2) do |config|
    config.vm.box = 'ubuntu/focal64'

    # Configuration of Web Servers
    config.vm.define "Web_Srv-1" do |web_srv1|
        web_srv1.vm.hostname = "web_srv1"
        web_srv1.vm.network "private_network", ip: "192.168.100.101"
        web_srv1.vm.provider "virtualbox" do |vb|
            vb.memory = 512
        end
    end

    config.vm.define "Web_Srv-2" do |web_srv2|
        web_srv1.vm.hostname = "web_srv2"
        web_srv1.vm.network "private_network", ip: "192.168.100.102"
        web_srv1.vm.provider "virtualbox" do |vb|
            vb.memory = 512
        end
    end
    # Configuration of Load Balancer
    config.vm.define "load-balancer" do |loadbalancer|
        loadbalancer.vm.hostname = "load-balancer"
        loadbalancer.vm.network "private_network", ip: "192.168.100.100"
        loadbalancer.vm.network "forwarded_port", guest: 80, host: 8080
        loadbalancer.vm.provider "virtualbox" do |vb|
            vb.memory = 512
        end
    end

end