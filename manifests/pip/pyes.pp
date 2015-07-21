# == Class: python::pip::pyes
#
# Declare pyes, a connector to use elasticsearch for Python
#
# === Example
#
# include python::pip
# include python::pip::pyes
# realize Package['python-pyes']
#
class python::pip::pyes {

  validate_re(
    $::osfamily,
    ['^RedHat$','^Debian$'],
    "Unsupported os family ${::osfamily}"
  )

  @package {'python-pyes':
    provider => 'pip',
    name     => 'python-pyes',
  }

}
