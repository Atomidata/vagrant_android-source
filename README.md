vagrant_android-source
======================

Vagrant box setup for working on the Android source code.

Installation:
-------------

Download and install [VirtualBox](http://www.virtualbox.org/)

Download and install [vagrant](http://vagrantup.com/)

Got to the repository folder and launch the box:


    $ cd [repo]
    $ vagrant up

Usage:
----------

Connect to the box over ssh:

	$ vagrant ssh

All the packages needed to build the Android source are setup. Repo is already downloaded.
You can continue and download the source:

	$ mkdir android-source
	$ cd android-source
	$ repo init -u https://android.googlesource.com/platform/manifest
	$ repo sync

Continue with the instructions from [http://source.android.com/](http://source.android.com/).

Customization:
-----------------

Older versions of the Android source (pre April 2014) need Java 6 to build, in Vagrantfile change:

	USE_JAVA_6=false

to:

	USE_JAVA_6=true

You can customize the number of CPU cores and memory the VM will utilize in Vagrantfile, the default is set to 2 CPU cores and 2GB RAM which is
pretty conservative.

	  config.vm.provider "virtualbox" do |v|
	    v.memory = 2 * 1024
	    v.cpus = 2
	  end