# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

require File.join(File.dirname(__FILE__), 'vagrant-shell-scripts/vagrant')

PROJECT_NAME = 'butler'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # ===============================
  # Networking                    
  # ===============================
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  config.vm.hostname = PROJECT_NAME + ".local"
  config.vm.network :private_network, ip: "192.68.33.11"
  config.ssh.forward_agent = true
  config.hostmanager.aliases = [ "www." + PROJECT_NAME + ".local" ]
  config.vm.provision :hostmanager 

  # ===============================
  # Shared Folder                 
  # ===============================

  config.vm.synced_folder ".", "/vagrant"

  # ===============================
  # Provider (VirtualBox)
  # ===============================
  
  config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end
  
  # ===============================
  # Provision
  # ===============================

  config.vm.provision :shell do |shell|
    vagrant_shell_scripts_configure(
        shell,
        File.dirname(__FILE__),
        'provision.sh'
    )
  end
end
