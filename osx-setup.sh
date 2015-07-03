#!/bin/bash -eux

# Install Xcode and Xcode Command Line Tools
xcode-select --install

# Install Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/binary
brew update

# spotify setup
# https://harishnarayanan.org/projects/shpotify/
# https://github.com/hnarayanan/shpotify/archive/master.zip
# unzip and move that script into ~/Applications/shpotify
# in your ~/.bash_profile make sure you have ~/Applications/shpotify in your $PATH

# graphviz
brew install graphviz

# Install git
brew install git
echo -n "Enter your full name for git and press [ENTER]: "
read fullname
echo -n "Enter your email address for git and press [ENTER]: "
read emailaddress
git config --global user.name "$fullname"
git config --global user.email "$emailaddress"

# Install awscli
sudo easy_install pip
sudo pip install awscli
mkdir -p ~/.aws
echo "[default]" >> ~/.aws/config
echo "region=us-east-1" >> ~/.aws/config
echo "output=json" >> ~/.aws/config

# tmux
brew install tmux

# irssi
brew install irssi

# Install Virtualbox
cd ~/Downloads/
curl -L -O http://download.virtualbox.org/virtualbox/4.3.12/VirtualBox-4.3.12-93733-OSX.dmg
hdiutil attach VirtualBox-*.dmg
sudo installer -pkg /Volumes/VirtualBox/VirtualBox.pkg -target /
hdiutil detach /Volumes/VirtualBox

# Install Vagrant
curl -L -O https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3.dmg
hdiutil attach vagrant_*.dmg
sudo installer -pkg /Volumes/Vagrant/Vagrant.pkg -target /
hdiutil detach /Volumes/Vagrant

# Install Packer
brew install packer

# Setup local srv folder
if [[ ! -f /srv ]]; then
	sudo mkdir /srv
fi
sudo chown -R `eval whoami` /srv
cd /srv

# gist
gem install gist

# lolcommits
gem install lolcommits
