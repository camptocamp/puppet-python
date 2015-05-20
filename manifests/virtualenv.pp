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

  $virtualenv_packages = $::lsbdistcodename ? {
    'jessie' => ['python-virtualenv', 'virtualenv'],
    default  => ['python-virtualenv'],
  }

  package { $virtualenv_packages:
    ensure => present,
  }
}
