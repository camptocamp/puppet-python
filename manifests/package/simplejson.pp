# == Class: python::package::simplejson
#
# Declare simplejson, a JSON encoding/decoding library for Python
#
# === Example
#
# include python::package::simplejson
# Package <| alias == 'python-simplejson' |>
#
class python::package::simplejson {

  validate_re(
    $::osfamily,
    ['^RedHat$','^Debian$'],
    "Unsupported os family ${::osfamily}"
  )

  @package {'python-simplejson':
    alias => 'python-simplejson',
  }

}
