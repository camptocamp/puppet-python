# == Class: python::package::argparse
#
# Declare argparse, Optparse inspired command line parser
#
# === Example
#
# include python::package::argparse
# realize Package['python-argparse']
#
class python::package::argparse {

  validate_re(
    $::osfamily,
    ['^RedHat$','^Debian$'],
    "Unsupported os family ${::osfamily}"
  )

  @package {'python-argparse':
  }

}
