# Source files for Cyberseminar
Requirements:
  - Vagrant
  - cygwin
  - rsync
  - virtualbox

All can be installed with chocolatey (https://chocolatey.org/)

Vagrant files for installation and configuration puppet lab. Contains example of simple LAMP module.

Usage: put files in directory and just use vagrant up command :)

It contains 4 puppet agents:
 - web (ubuntu)
 - ulamp (ubuntu)
 - clamp (centos)
 - db (centos)

and one puppet master:
  - puppet (ubuntu) - puppet / puppetdb server.

In case of issues with Centos Server:
  - run vagrant up again to start all servers. Puppet master (puppet) is starting last
  - run: vagrant provision db clamp to complete puppet agent installation
