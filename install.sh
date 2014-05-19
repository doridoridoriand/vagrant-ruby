#!/usr/bin/env bash

cd $HOME
sudo apt-get update
sudo apt-get -y install git
sudo sudo apt-get -y install curl g++
sudo apt-get -y install zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev
sudo apt-get -y install sqlite3 libsqlite3-dev
cd $HOME
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
exec $SHELL
mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git
sudo aptitude -y install make
rbenv install 2.1.1
rbenv rehash
rbenv global 2.1.1
gem install rails --version="~>4.0"
rbenv rehash

sudo apt-get -y install vim
sudo apt-get -y install zsh
cd $HOME
git clone https://github.com/unosk/dotfiles.git
cd dotfiles
./install.sh
