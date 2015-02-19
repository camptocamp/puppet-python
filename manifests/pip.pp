# this class just installs the minimal stuff needed to run "pip install"
class python::pip {

  package {'python-pip':
    ensure => present,
  }

  if $::osfamily == 'RedHat' and versioncmp($::operatingsystemmajrelease, '6') < 0 {
    file {'/usr/bin/pip':
      ensure  => 'link',
      target  => '/usr/bin/pip-python',
      require => Package['python-pip'],
    }

    File['/usr/bin/pip'] -> Package <| provider == pip |>
  }

}
