#!/usr/bin/env bash

<%= import 'vagrant-shell-scripts/ubuntu.sh' %>

# ===============================
# Setup APT
# ===============================

# Use a local Ubuntu mirror, results in faster downloads.
apt-mirror-pick 'sg'

# Custom repositories
apt-packages-ppa 'chris-lea/node.js'

# Update packages cache.
apt-packages-update

# ===============================
# Install Base Packages.
# ===============================

apt-packages-install	\
	git-core			\
	curl				\
	build-essential		\
	openssl 			\
	libssl-dev			\
	libfreetype6 		\
	libfreetype6-dev	\
	fontconfig				

# ===============================
# Install NodeJS
# ===============================

apt-packages-install 	\
	nodejs						

# ===============================
# Install Global Node Package Modules
# ===============================

npm-packages-install	\
 	n 					\
 	grunt				\
 	bower				\
	phantomjs 			\
 	casperjs			\
 	mocha				\
 	node-sass			\
 	http-server	

# ===============================
# Install Meteor
# ===============================

curl https://install.meteor.com | /bin/sh
npm-packages-install meteorite

# ===============================
# Cleanup Home Folder
# ===============================
if [ -f postinstall.sh ]; then
	rm -f postinstall.sh
fi

if [ -d /tmp ]; then
	rm -rf tmp
fi 
