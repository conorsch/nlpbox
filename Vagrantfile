# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Silly but effective syntax for declaring box hostname
  config.vm.define :srilmbox do |t|
  end

  # Canonical builds nightly Vagrant images for Ubuntu: http://cloud-images.ubuntu.com/vagrant/
  config.vm.box = "trusty32"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

#  config.vm.network :forwarded_port, guest: 8000, host: 8000
#  config.vm.network :private_network, ip: "192.168.33.33"
#

  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.name = "srilmbox"
  end

  config.vm.synced_folder "../language-model-server", "/home/vagrant/gits/lmserver"
  
  config.vm.provision :shell, :inline => "locale-gen en_US.UTF-8"
  config.vm.provision :shell, :path => "provisioning/scripts/set_env_vars.sh"
  config.vm.provision :shell, :path => "provisioning/scripts/compile_srilm.sh"
  config.vm.provision :shell, :path => "provisioning/scripts/compile_swig_srilm.sh"
  config.vm.provision :shell, :path => "provisioning/scripts/personalize_env.sh"
  config.vm.provision :shell, :path => "provisioning/scripts/deploy_lm_server.sh"
end
