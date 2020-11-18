
# resource

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
     * [Requirements](#requirements)
4. [Usage](#usage)
5. [Reference](#reference)
6. [Limitations](#limitations)
7. [Development](#development)

## Overview

Module provides the resource task.

## Module Description

The provided task allows you to inspect the values of resources via the `puppet resource` command.

## Setup

### Requirements
This module is compatible with Puppet Enterprise and Puppet Bolt.

* To run tasks with Puppet Enterprise, PE 2018.1 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must be Puppet agents.
* To run tasks with Puppet Bolt, Bolt 1.0 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must have SSH or WinRM services enabled.

## Usage

To run a resource task, use the task command, specifying the type and optionally the title of the resource.

* With PE on the command line, run `puppet task run resource type=<TYPE> title=<TITLE>`.
* With Bolt on the command line, run `bolt task run resource type=<TYPE> title=<TITLE>`.
* To display help for the resource task, to view the available actions and parameters, run `puppet task show resource`
* To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`

For example, to get the state of the root user, run:

* With PE, run `puppet task run resource type=user title=root --nodes neptune`.
* With Bolt, run `bolt task run resource type=user title=root --nodes neptune --modulepath ~/modules`.

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

For information on the classes and types, see the [REFERENCE.md](https://github.com/puppetlabs/puppetlabs-resource/blob/main/REFERENCE.md).
For a complete list of resource types that are supported, see the [Puppet Types](https://docs.puppet.com/puppet/latest/type.html) documentation.

## Limitations

To run acceptance tests against Windows machines, ensure that the `BEAKER_password` environment variable has been set to the password of the Administrator user of the target machine.

For an extensive list of supported operating systems, see [metadata.json](https://github.com/puppetlabs/puppetlabs-resource/blob/main/metadata.json)

## Development

Puppet modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great.
To contribute to Puppet projects, see our [module contribution guide.](https://github.com/puppetlabs/puppetlabs-resource/blob/main/CONTRIBUTING.md)
