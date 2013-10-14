/*

== Class: python::mod_python

Installs and enables mod_python for the apache web server.

Requires:
  Class['apache']

Usage:
  include apache
  include python::mod_python

*/
class python::mod_python {

  include python

  package { 'mod_python':
    ensure => present,
    name   => $::osfamily ? {
      Debian  => 'libapache2-mod-python',
      default => 'mod_python',
    }
  }

  apache_c2c::module { 'python':
    ensure  => present,
    require => Package['mod_python'],
  }

  case $::osfamily {

    RedHat: {
      file { '/etc/httpd/conf.d/python.conf':
        ensure => absent,
        before => Apache_c2c::Module['python'],
      }
      file { '/etc/httpd/mods-available/python.load':
        ensure => present,
        source => 'puppet:///modules/python/httpd/python.load',
        before => Apache_c2c::Module['python'],
      }

    }
  }
}
