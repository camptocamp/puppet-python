# this class just installs the minimal stuff needed to run "pip install"
class python::pip {

  $pip_package = $::osfamily ? {
    'RedHat' => 'python2-pip',
    'Debian' => 'python-pip',
  }

  package {'python-pip':
    ensure => present,
    name   => $pip_package,
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
