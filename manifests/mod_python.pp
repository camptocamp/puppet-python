#
# == Class: python::mod_python
#
# Installs and enables mod_python for the apache web server.
#
# Requires:
#   Class['apache']
#
# Usage:
#   include apache
#   include python::mod_python
#
class python::mod_python {

  include ::python

  $mod_python_pkg = $::osfamily ? {
      'Debian'  => 'libapache2-mod-python',
      default => 'mod_python',
    }

  package { 'mod_python':
    ensure => present,
    name   => $mod_python_pkg,
  }

  apache_c2c::module { 'python':
    ensure  => present,
    require => Package['mod_python'],
  }

  case $::osfamily {

    'RedHat': {
      file { '/etc/httpd/conf.d/python.conf':
        ensure => absent,
        before => Apache_c2c::Module['python'],
      }
      file { '/etc/httpd/mods-available/python.load':
        ensure  => file,
        content => file('python/httpd/python.load'),
        before  => Apache_c2c::Module['python'],
      }

    }

    default: { }
  }
}
