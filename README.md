
# resource

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with resource task](#setup)
    * [Setup requirements](#setup-requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

This module provides the resource task. This allows you to run the resource command. For example finding the users on the sytstem. It requires Puppet 5 or bolt installed

## Setup

### Setup Requirements

This module requires either Puppet enterprise or Bolt to function.

## Usage

There are a number of ways to execute the resource task. The examples below return the users on the system. 

VIA PE-console see link_here

Via BOLT more information here LINK
```bolt
bolt task resource type=user
```

Via the PE CLI, more information here LINK

```pe
puppet task resource type=user
```

## Reference

To get the availible actions and parameters run

```pe
puppet task show resource
```

```bolt
puppet task show resource
```

or go to https://forge.puppet.com/puppetlabs/resource/tasks

For a complete list of default resources please go to https://docs.puppet.com/puppet/latest/type.html

## Development

Here is a quick how to get up and running 
```
git clone git@github.com:puppetlabs/resource.git
```
```
bundle install --path .bundle/gems/
```
```
BEAKER_destroy=no PUPPET_INSTALL_TYPE=pe BEAKER_PE_DIR=http://enterprise.delivery.puppetlabs.net/2017.3/ci-ready  BEAKER_PE_VER=2017.3.0-rc8-41-g4981bd3 BEAKER_set=centos7-pooler  bundle exec rspec spec/acceptance
```

This will spit out a vmpooler machine name you can ssh to

```
ssh -i ~/.ssh/id_rsa-acceptance root@<VMPOOLER HOSTNAME FROM ABOVE> 
```

show the status of the openssl resource (use the actual name of your node)
```
puppet task run resource --nodes cgx1boldbmbi3vn.delivery.puppetlabs.net action=status resource=httpd
```

display help for resource
```
puppet task show resource
```

show help for the task cli
```
puppet task run --help
```
