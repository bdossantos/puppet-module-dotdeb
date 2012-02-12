# Puppet Dotdeb Module

Module for configuring [Dotdeb](http://www.dotdeb.org/)

Tested on Debian GNU/Linux 6.0 Squeeze with Puppet 2.6.

## Installation

Clone this repo to a dotdeb directory under your Puppet modules directory :

    git clone git://github.com/Benjamin-Ds/puppet-module-dotdeb.git dotdeb

## Usage

    node nodename {
        include dotdeb
    }

Or

    puppet apply -e "include dotdeb"