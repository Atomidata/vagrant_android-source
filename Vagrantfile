# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

#Change this to true if you're building older versions of the android source
#This will install Oracle JDK 6 instead of OpenJDK 7
USE_JAVA_6=false

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise64"
  if USE_JAVA_6
    config.vm.provision :shell, :path => "bootstrap.sh", :args => "--use-java-6"
  else
    config.vm.provision :shell, :path => "bootstrap.sh"
  end

  #Set memory and number of CPUs assigned to the box
  #Default is 2GB and 2 cores
  config.vm.provider "virtualbox" do |v|
    v.memory = 2 * 1024
    v.cpus = 2
  end

end
