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