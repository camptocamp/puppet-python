# == Class: python::pip::simplejson
#
# Declare simplejson, a JSON encoding/decoding library for Python
#
# === Example
#
# include python::pip
# include python::pip::simplejson
# Package <| alias == 'python-simplejson' |>
#
class python::pip::simplejson {

  validate_re(
    $::osfamily,
    ['^RedHat$','^Debian$'],
    "Unsupported os family ${::osfamily}"
  )

  @package {'simplejson':
    provider => 'pip',
    alias    => 'python-simplejson',
  }

}
