# == Class: python::package::invoke
#
# Declare invoke, a Python task execution tool
#
# === Example
#
# include python::package::invoke
# realize Package['python-invoke']
#
class python::package::invoke {

  validate_re(
    $::osfamily,
    ['^RedHat$','^Debian$'],
    "Unsupported os family ${::osfamily}"
  )

  @package {'python-invoke':
  }

}
