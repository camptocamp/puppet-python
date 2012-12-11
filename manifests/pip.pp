# this class just installs the minimal stuff needed to run "pip install"
class python::pip {

  package {'python-pip':
    ensure => present,
  }

}
