# this class just installs the minimal stuff needed to run "pip install"
class python::pip {

  package {'python-pip':
    ensure => present,
  }

  if $::osfamily == 'RedHat' and $::lsbmajdistrelease<'6' {
    file {'/usr/bin/pip':
      ensure  => 'link',
      target  => '/usr/bin/pip-python',
      require => Package['python-pip'],
    }

    File['/usr/bin/pip'] -> Package <| provider == pip |>
  }

}
