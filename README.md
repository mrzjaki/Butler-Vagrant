# Butler-Vagrant
A Vagrant configuration for Butler development.

## Requirements

- VirtualBox (4.3.6) (https://www.virtualbox.org/)
- Vagrant (1.4.3) (http://www.vagrantup.com/)
- vagrant-hostmanager(1.3.0) (https://github.com/smdahlen/vagrant-hostmanager)
- vagrant-vbguest (0.10.0) (https://github.com/dotless-de/vagrant-vbguest)

### Updating VirtualBox Guest Additions
The default packaged vagrant box contains an outdated VirtualBox Guest Additions. This actually is trivial since we have not encountered any issues caused by the unmatching guest additions. But we prefer to have our environment set up without any error messages, so we chose to update the VirtualBox Guest Addition using vagrant vb-guest plugin.

## Instructions

1. Setup Butler-Vagrant
```
> cd /path/to/your/development/folder
> git clone https://github.com/prixde/Butler-Vagrant.git
> cd Butler-Vagrant
> git submodule update --init
```

2. Initialize Butler-Vagrant
```
> vagrant up
> vagrant ssh
```

3. Starting Development

```
vagrant@butler:~$ git clone url-of-project-repo
vagrant@butler:~$ cd Butler
vagrant@butler:~/Butler$ meteor
```

App should be running on the local browser at ```http://www.butler.local:3000```


