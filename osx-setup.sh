#!/bin/bash -eux
# Install Xcode and Xcode Command Line Tools
xcode-select --install

# Install Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/binary
brew update

# git
brew install git
echo -n "Enter your full name for git and press [ENTER]: "
read fullname
echo -n "Enter your email address for git and press [ENTER]: "
read emailaddress
git config --global user.name "$fullname"
git config --global user.email "$emailaddress"

# awscli
sudo easy_install pip
sudo pip install awscli

# some utilities
brew install tmux
brew install wget
brew install irssi
brew install watch
brew install gnupg
brew install wget
brew install jq
brew install ipython
brew install puppet-lint
brew install parallel
brew install packer

# gist
gem install gist

# install dropbox and symlink in your dotfiles/directories
