Vagrant.configure("2") do |config|
  config.vm.box = "jesaa/php-dev"

  config.vm.define "apps-oficina-virtual#{ENV['VAGRANT_MACHINE_SUFFIX']}" do |config|
    config.vm.hostname = "apps-oficina-virtual"
    config.vm.network "private_network", ip: "192.168.10.10"

    config.vm.provision "shell", path: "bootstrap.sh"

    config.vm.provider "virtualbox" do |v|
      v.cpus = 3
      # v.memory = 3072
    end
  end
end
