# == Class: python::pip::invoke
#
# Declare invoke, a Python task execution tool
#
# === Example
#
# include python::pip
# include python::pip::invoke
# realize Package['python-invoke']
#
class python::pip::invoke {

  validate_re(
    $::osfamily,
    ['^RedHat$','^Debian$'],
    "Unsupported os family ${::osfamily}"
  )

  @package {'python-invoke':
    provider => 'pip',
    name     => 'invoke',
  }

}
