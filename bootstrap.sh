#!/usr/bin/env bash
apt-get update
apt-get upgrade
sudo apt-get -y install software-properties-common python-software-properties

#Oracle java
#sudo add-apt-repository -y ppa:webupd8team/java
#sudo apt-get -y update
#/bin/echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
#sudo apt-get install -y oracle-java7-installer oracle-java7-set-default

sudo apt-get -y install openjdk-7-jdk openjdk-7-jre


apt-get install -y git vim wget screen curl gnupg flex bison gperf build-essential
apt-get install -y zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev
apt-get install -y libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386
apt-get install -y libgl1-mesa-dev g++-multilib mingw32 tofrodos
apt-get install -y python-markdown libxml2-utils xsltproc zlib1g-dev:i386
ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so

if [ ! -d "/home/vagrant/bin" ] ; then
    mkdir /home/vagrant/bin
fi

curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > /home/vagrant/bin/repo
chown vagrant:vagrant /home/vagrant/bin/repo
chmod a+x /home/vagrant/bin/repo