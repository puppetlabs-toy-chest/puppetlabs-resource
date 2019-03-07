
# resource

#### Table of Contents

1. [Description](#description)
2. [Requirements](#requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Getting help - Some Helpful commands](#getting-help)

## Description

This module provides the resource task. This task allows you to inspect the values of resources via the `puppet resource` command.

## Requirements
This module is compatible with Puppet Enterprise and Puppet Bolt.

* To run tasks with Puppet Enterprise, PE 2018.1 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must be Puppet agents.

* To run tasks with Puppet Bolt, Bolt 1.0 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must have SSH or WinRM services enabled.

## Usage

To run a resource task, use the task command, specifying the type and optionally the title of the resource.

* With PE on the command line, run `puppet task run resource type=<TYPE> title=<TITLE>`.
* With Bolt on the command line, run `bolt task run resource type=<TYPE> title=<TITLE>`.

For example, to get the state of the root user, run:

* With PE, run `puppet task run resource type=user title=root --nodes neptune`.
* With Bolt, run `bolt task run resource type=user title=root --nodes neptune --modulepath ~/modules`.

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

To view the available actions and parameters, on the command line, run `puppet task show resource` or see the resource module page on the [Forge](https://forge.puppet.com/puppetlabs/resource/tasks).

For a complete list of resource types that are supported, see the [Puppet Types](https://docs.puppet.com/puppet/latest/type.html) documentation.

## Limitations

To run acceptance tests against Windows machines, ensure that the `BEAKER_password` environment variable has been set to the password of the Administrator user of the target machine.

For an extensive list of supported operating systems, see [metadata.json](https://github.com/puppetlabs/puppetlabs-resource/blob/master/metadata.json)

## Getting Help

To display help for the resource task, run `puppet task show resource`

To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`
