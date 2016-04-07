
Vagrant.configure(2) do |config|
  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/trusty64"
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.50.40"
    web.vm.network "forwarded_port", guest: 80, host: 8080
    web.vm.provision :shell, path: "bootstrap-ubuntu.sh"
  end

  config.vm.define "ulamp" do |ulamp|
    ulamp.vm.box = "ubuntu/trusty64"
    ulamp.vm.hostname = "ulamp"
    ulamp.vm.network "private_network", ip: "192.168.50.50"
    ulamp.vm.network "forwarded_port", guest: 80, host: 8081
    ulamp.vm.provision :shell, path: "bootstrap-ubuntu.sh"
  end

  config.vm.define "clamp" do |clamp|
    clamp.vm.box = "bento/centos-7.1"
    ENV["VAGRANT_DETECTED_OS"] = ENV["VAGRANT_DETECTED_OS"].to_s + " cygwin"
    clamp.vm.hostname = "clamp"
    clamp.vm.network "private_network", ip: "192.168.50.51"
    clamp.vm.network "forwarded_port", guest: 80, host: 8082
    clamp.vm.provision :shell, path: "bootstrap-centos.sh"
  end

  config.vm.define "db" do |db|
    db.vm.box = "bento/centos-7.1"
    ENV["VAGRANT_DETECTED_OS"] = ENV["VAGRANT_DETECTED_OS"].to_s + " cygwin"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.50.4"
    db.vm.provision :shell, path: "bootstrap-centos.sh"
  end

  config.vm.define "puppet" do |puppet|
    puppet.vm.box = "ubuntu/trusty64"
    puppet.vm.hostname = "puppet"
    puppet.vm.network "private_network", ip: "192.168.50.2"
    puppet.vm.provision :shell, path: "bootstrap-srv.sh"
    config.vm.provider "virtualbox" do |v|
      v.memory = 8192
    end
  end
end
