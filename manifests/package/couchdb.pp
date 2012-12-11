# == Class: python::package::couchdb
#
# Declare Python library for working with CouchDB
#
# === Example
#
# include python::package::couchdb
# Package <| alias == 'python-couchdb' |>
#
class python::package::couchdb {

  validate_re(
    $::osfamily,
    ['^RedHat$','^Debian$'],
    "Unsupported os family ${::osfamily}"
  )

  @package {'python-couchdb':
    alias => 'python-couchdb',
  }

}
