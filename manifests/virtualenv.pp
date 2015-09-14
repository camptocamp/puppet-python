# == Class: python::virtualenv
#
# Install virtualenv, to help people create python-"chroots" with packages not
# necessarily available in the distribution.
#
# Usage:
#   include python::virtualenv
#
class python::virtualenv {

  include ::python::dev

  if $::operatingsystem == 'Debian' and versioncmp($::operatingsystemmajrelease, '8') >= 0 {
    $virtualenv_packages = ['python-virtualenv', 'virtualenv']
  } else {
    $virtualenv_packages = 'python-virtualenv'
  }

  package { $virtualenv_packages:
    ensure => present,
  }
}
