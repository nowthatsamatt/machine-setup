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

sudo easy_install pip
sudo pip install awscli
sudo pip install yamllint
sudo pip install python-novaclient
sudo pip install python-keystoneclient
sudo pip install python-neutronclient
sudo pip install python-cinderclient
sudo pip install boto
sudo pip install boto3

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

gem install gist
gem install hiera-eyaml
gem install json

# install dropbox
#brew cask install dropbox

# dotfiles and directories
echo -n "Enter your OSX username and press [ENTER]: "
read username
ln -s /Users/${username}/Dropbox/tubemogul/configs/ApacheDirectoryStudio/ ~/.ApacheDirectoryStudio
ln -s /Users/${username}/Dropbox/tubemogul/configs/aws ~/.aws
ln -s /Users/${username}/Dropbox/tubemogul/configs/bash_eternal_history ~/.bash_eternal_history
ln -s /Users/${username}/Dropbox/tubemogul/configs/bash_profile ~/.bash_profile
ln -s /Users/${username}/Dropbox/cloud_credentials ~/.cloud_credentials
ln -s /Users/${username}/Dropbox/tubemogul/configs/eyaml ~/.eyaml
ln -s /Users/${username}/Dropbox/tubemogul/configs/gist ~/.gist
ln -s /Users/${username}/Dropbox/tubemogul/configs/git-templates ~/.git-templates
ln -s /Users/${username}/Dropbox/tubemogul/configs/gitconfig ~/.gitconfig
ln -s /Users/${username}/Dropbox/tubemogul/configs/gnupg ~/.gnupg
ln -s /Users/${username}/Dropbox/tubemogul/configs/ipython/ ~/.ipython
ln -s /Users/${username}/Dropbox/tubemogul/configs/irssi/ ~/.irssi
ln -s /Users/${username}/Dropbox/tubemogul/configs/packer.d/ ~/.packer.d
ln -s /Users/${username}/Dropbox/tubemogul/configs/parallel/ ~/.parallel
ln -s /Users/${username}/Dropbox/tubemogul/configs/ssh/ ~/.ssh
ln -s /Users/${username}/Dropbox/tubemogul/configs/terraform.d/ ~/.terraform.d
ln -s /Users/${username}/Dropbox/tubemogul/configs/tmux.conf ~/.tmux.conf
ln -s /Users/${username}/Dropbox/tubemogul/configs/vault-token ~/.vault-token
ln -s /Users/${username}/Dropbox/tubemogul/configs/vim/ ~/.vim
ln -s /Users/${username}/Dropbox/tubemogul/configs/vimrc ~/.vimrc
ln -s /Users/${username}/Dropbox/tubemogul/configs/vscode/ ~/.vscode
ln -s /Users/${username}/Dropbox/tubemogul/configs/vsql_history ~/.vsql_history
ln -s /Users/${username}/Dropbox/tm-repos/ ~/tm

# install other software
#vscode
#evernote
#slack
#apache directory studio
#wireshark
#chrome
#firefox
#spotify
#outlook
#iterm2
