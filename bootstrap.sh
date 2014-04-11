#!/usr/bin/env bash
apt-get update
apt-get upgrade
sudo apt-get -y install software-properties-common python-software-properties

JAVA_6=0

while [ $# -gt 0 ]
do
    case "$1" in
       --use-java-6)   JAVA_6=1;shift;;
       -6) JAVA_6=1;shift;;

    esac
    shift
done

#Java
if [ $JAVA_6 == 1 ]; then
	#Oracle java
	apt-get -y remove --purge openjdk-7-jdk openjdk-7-jre
	apt-get -y autoremove
	add-apt-repository -y ppa:webupd8team/java
	apt-get -y update
	/bin/echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
	apt-get install -y oracle-java6-installer oracle-java6-set-default
else

	#OpenJDK
	apt-get -y remove --purge oracle-java6-installer oracle-java6-set-default
	apt-get -y autoremove
	apt-get -y install openjdk-7-jdk openjdk-7-jre
	
fi

#Stuff needed by the build system
apt-get install -y git vim wget screen curl gnupg flex bison gperf build-essential
apt-get install -y zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev
apt-get install -y libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386
apt-get install -y libgl1-mesa-dev g++-multilib mingw32 tofrodos
apt-get install -y python-markdown libxml2-utils xsltproc zlib1g-dev:i386
ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so


#repo
if [ ! -d "/home/vagrant/bin" ] ; then
    mkdir /home/vagrant/bin
fi

curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > /home/vagrant/bin/repo
chown vagrant:vagrant /home/vagrant/bin/repo
chmod a+x /home/vagrant/bin/repo

#TODO CCACHE