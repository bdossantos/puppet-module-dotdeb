# Puppet Dotdeb Module

Module for configuring [Dotdeb](http://www.dotdeb.org/)

Tested on Debian GNU/Linux 6.0 Squeeze with Puppet 2.6.

## Installation

Clone this repo to a dotdeb directory under your Puppet modules directory :

```bash
git clone git://github.com/Benjamin-Ds/puppet-module-dotdeb.git dotdeb
```

## Usage

```puppet
# node.pp
node default {
    include dotdeb
}
```

```bash
puppet apply /path/to/node.pp --modulepath /etc/puppet/modules --logdest console
```

Or

```bash
puppet apply -e "include dotdeb"
```