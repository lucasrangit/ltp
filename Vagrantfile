# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Test VMs for LTP.
#
# Usage:
#   vagrant ssh -c "cd /vagrant; ./build.sh -c" <machine>
#   vagrant ssh -c "sudo /opt/ltp/runltp -f admin_tools -s cron" <machine>

Vagrant.configure("2") do |config|
  config.vm.define "ubuntu1604" do |ubuntu1604|
    ubuntu1604.vm.box = "bento/ubuntu-16.04"
    ubuntu1604.vm.box_version = "201710.25.0"
  end

  config.vm.define "debian92" do |debian92|
    debian92.vm.box = "bento/debian-9.2"
    debian92.vm.box_version = "201710.25.0"
  end

  config.vm.define "centos74" do |centos74|
    centos74.vm.box = "bento/centos-7.4"
    centos74.vm.box_version = "201710.25.0"
  end

  config.vm.define "fedora26" do |fedora26|
    fedora26.vm.box = "bento/fedora-26"
    fedora26.vm.box_version = "201710.25.0"
  end

  config.vm.define "opensuse423" do |opensuse423|
    opensuse423.vm.box = "bento/opensuse-leap-42.3"
  end

  # The following boxes are not available on Vagrant Cloud due to license restrictions.
  # If you have a RHEL/SLES developer license you can create the box yourself using Bento.

  # FIXME issue with shared folders
  config.vm.define "sles123" do |sles123|
    sles123.vm.box = "sles-12-sp3"
  end

  # FIXME cannot install packages, no subscription
  config.vm.define "rhel511" do |rhel511|
    rhel511.vm.box = "rhel-5.11"
  end

  # TODO untested
  config.vm.define "rhel74" do |rhel74|
    rhel74.vm.box = "rhel-7.4"
  end

  config.vm.provision "shell", path: "setup.sh"
end
