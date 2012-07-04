chef-mint
================

A set of recipes to provision your [Linux Mint](http://linuxmint.com) workstation using [Chef](http://www.opscode.com/chef/).

The recipes used in this project installing and configuring useful software for machines used for software development. Despite *chef* allows you to work with different operating system, [chef-mint](http://github.com/bsnux/chef-mint) is focused on [Linux Mint](http://linuxmint.com) Linux distro.

*chef-solo* is used for simplicity because we only want to provide one machine. However, you can adapt the recipes to provision *n* machines using regular *Chef*.

[OPSCODE](http://www.opscode.com/chef/) offers a complete set of independient operating system recipes. However, the objective of *chef-mint* is to get focus on [Linux Mint](http://linuxmint.com) operating system, saving lines of code and simplifying the provisioning process.

Requirements
------------

* [Chef](http://www.opscode.com/chef/). See [installation](http://wiki.opscode.com/display/chef/Installation) instructions.

Installation
-------------

1. Clone current repo.

2. If *Chef* is not installed on your machine, you can execute:

    $ sudo ./init.sh

3. Ready!

Usage
-----

    $ cd chef-mint

    $ chef-solo -c solo.rb -j solo.json

See also
---------

[Complete and official cookbook repository for chef](https://github.com/opscode-cookbooks)
