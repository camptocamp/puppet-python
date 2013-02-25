# Python Puppet Module

This module manages Python and pip on Debian/Redhat based systems.

## Basic usage

This module contains a set of classes that declare Python libraries in the 
form of virtual resources. Wherever a library is needed you just have to 
write the following lines:

    include python::package::simplejson
    Package <| alias == 'python-simplejson' |>

If you prefer pip packages:

    include python::pip
    include python::pip::json
    Package <| alias == 'python-simplejson' |>

Due to a bug (http://projects.puppetlabs.com/issues/4459) resource alias 
is only usable for require. For example:

    realize Package[python-simplejson]

doesn't work! This is why we use the "spaceship" (collection) operator.

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
