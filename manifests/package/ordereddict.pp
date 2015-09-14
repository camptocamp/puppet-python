# == Class: python::package::ordereddict
#
# Declare ordereddict, A drop-in substitute for Py2.7's new collections
#
# === Example
#
# include python::package::ordereddict
# realize Package['python-ordereddict']
#
class python::package::ordereddict {

  validate_re(
    $::osfamily,
    ['^RedHat$','^Debian$'],
    "Unsupported os family ${::osfamily}"
  )

  @package {'python-ordereddict':
  }

}
