#!/bin/sh

yum clean all

yum -y update

yum -y epel-release

yum -y group install "Development Tools"

yum install -y gcc g++ make automake autoconf curl-devel openssl-devel zlib zlib-devel httpd-devel apr-devel apr-util$
yum install -y readline-devel zlib-devel libffi-devel libyaml-devel openssl-devel sqlite-devel

yum -y install wget

## Start ruby installation ##
cd /usr/local
wget https://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz
tar -zxvf ruby-2.4.1.tar.gz
cd ruby-2.4.1
./configure
make
make install
## End ruby installation ##

curl -sL https://rpm.nodesource.com/setup | bash -

yum install -y nodejs

#npm install -g grunt-cli

#npm install -g bower


yum -y install ruby-devel

#yum -y install ruby-rdoc

gem install json_pure

gem install rails -v 5.1.3

gem install bundler

# Install latest rubygems by visiting http://rubygems
mkdir ~/src
cd ~/src

wget https://rubygems.org/rubygems/rubygems-2.6.12.tgz
tar -zxvf rubygems-2.6.12.tgz
cd rubygems-2.6.12
ruby setup.rb

gem update --system

gem update

gem install compass

gem install compass-normalize
