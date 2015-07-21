# Python Puppet Module

[![Puppet Forge](http://img.shields.io/puppetforge/v/camptocamp/python.svg)](https://forge.puppetlabs.com/camptocamp/python)
[![Build Status](https://travis-ci.org/camptocamp/puppet-python.png?branch=master)](https://travis-ci.org/camptocamp/puppet-python)

This module manages Python and pip on Debian/Redhat based systems.

## Basic usage

This module contains a set of classes that declare Python libraries in the 
form of virtual resources. Wherever a library is needed you just have to 
write the following lines:

    include python::package::simplejson
    realize Package['python-simplejson']

If you prefer pip packages:

    include python::pip
    include python::pip::simplejson
    realize Package['python-simplejson']


## Dependencies

This module depends on:
 
 * [puppet-stdlib](https://github.com/camptocamp/puppet-stdlib)

## Contributing

Please report bugs and feature request using [GitHub issue
tracker](https://github.com/camptocamp/puppet-python/issues).

For pull requests, it is very much appreciated to check your Puppet manifest
with [puppet-lint](https://github.com/rodjek/puppet-lint) to follow the recommended Puppet style guidelines from the
[Puppet Labs style guide](http://docs.puppetlabs.com/guides/style_guide.html).

## License

Copyright (c) 2012 <mailto:puppet@camptocamp.com> All rights reserved.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
