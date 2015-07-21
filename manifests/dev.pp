#
# == Class: python::dev
#
# Ensures python's C header files are installed on your system. This will allow
# you to use "easy_install" to install modules built in C.
#
# Usage:
#   include python::dev
#
class python::dev {

  include ::python

  $pkg = $::osfamily ? {
    'Debian' => 'python-dev',
    'RedHat' => 'python-devel',
  }

  package { 'python-dev':
    ensure => present,
    name   => $pkg,
  }

}
