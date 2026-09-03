Vagrant.configure("2") do |config|

  config.vm.define "prod" do |prod|
    prod.vm.box = "ubuntu/jammy64"
    prod.vm.hostname = "prod"
    prod.vm.network "private_network", ip: "192.168.33.5"
    prod.vm.synced_folder "./app", "/home/vagrant"
  end

   config.vm.provider "virtualbox" do |vb|
    vb.name = "producao-node"
    vb.memory = "1024"
    vb.cpus = 1
   end

   config.vm.provision "shell", path: "vagrant/scripts/setup-node.sh"

end
