name 'cis_rhel'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs/Configures cis_rhel'
long_description 'Installs/Configures cis_rhel'
version '0.1.0'
chef_version '>= 12.19' if respond_to?(:chef_version)

supports 'redhat'
supports 'centos'

depends 'aide'
depends 'os-hardening'
depends 'sudo'
depends 'firewall'
depends 'ssh-hardening'
depends 'cron'