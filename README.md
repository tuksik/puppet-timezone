# puppet-timezone

####Table of Contents

1. [Overview - What is the timezone module?](#overview)
2. [Module Description - What does the module do?](#module-description)
3. [Setup - The basics of getting started with timezone](#setup)
4. [Usage - The classes, defined types, and their parameters available for configuration](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)

## Overview

The timezone module installs, configures, and manages the system's timezone.

## Module Description

The timezone module handles installing and configuring the system's timezone across a range of operating systems and distributions.

## Setup

### What timezone affects

* /etc/localtime

### Basics

Getting started with this module is as simple as specifying the following in your manifest:

```puppet
class { 'timezone': timezone => 'US/Eastern' }
```

## Usage

The following parameters are available in the timezone module:

* timezone
* zoneinfo_dir
* config_file

## Limitations

This module has been built and tested against Puppet 3.0 and higher.

The module has been tested on:

* RedHat Enterprise Linux 6
* CentOS 6
* Ubuntu 12.04

Testing on other platforms has been light and cannot be guaranteed.
