# == Class: python::pip::couchdb
#
# Declare Python library for working with CouchDB
#
# === Example
#
# include python::pip
# include python::pip::couchdb
# realize Package['python-couchdb']
#
class python::pip::couchdb {

  validate_re(
    $::osfamily,
    ['^RedHat$','^Debian$'],
    "Unsupported os family ${::osfamily}"
  )

  # Workaround: added a SPACE in namevar to avoid duplicate declaration
  # with the service/package couchdb! Hoping that one day we can properly solve
  # this problem using e.g. composite name identifier
  @package {'python-couchdb':
    provider => 'pip',
    name     => ' couchdb',
  }

}
