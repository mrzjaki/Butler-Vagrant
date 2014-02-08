# Vagrant-MakeButler
A Vagrant configuration for Butler development.

## Requirements

- VirtualBox (4.3.6) (https://www.virtualbox.org/)
- Vagrant (1.4.3) (http://www.vagrantup.com/)
- vagrant-hostmanager(1.3.0) (https://github.com/smdahlen/vagrant-hostmanager)
- vagrant-vbguest (https://github.com/dotless-de/vagrant-vbguest)

## Instructions

1. Setup Butler-Vagrant.
```
> git clone git://github.com/mrzjaki/Butler-Vagrant
> cd Butler-Vagrant
> git submodule init
> git submodule update
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


