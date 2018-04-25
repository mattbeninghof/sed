# Sensu Enterprise Demo

## Overview

This repository contains all the necessary configuration and automation (via
[Vagrant][vagrant]) for provisioning Sensu Enterprise<sup>1</sup> for
demonstration, evaluation, or demonstration purposes

_NOTE: this configuration repository may be used for provisioning Sensu
Enterprise versions based on Sensu Core 1.x._

## Prerequisites

The following tools are required to be installed on your local workstation to
run this demo:

1. [Vagrant][vagrant]
2. [VMware Fusion][vmware-fusion] (recommended)
3. [VMware Fusion provider][vagrant-vmware] for Vagrant

Some additional configuration has also been provided for use with the following
tools, which are optional:

1. [direnv][direnv]

## Getting Started

1. Clone this repository

   ```
   $ git clone git@github.com:sensu/sensu-enterprise-demo.git
   ```

2. Set environment variables containing your Sensu Enterprise repository
   username and password. Optionally also configure your Vagrant provider (e.g
   if you're using VirtualBox).

   ```
   $ cd sed
   $ export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
   $ export SE_USER=REPLACEME
   $ export SE_PASS=REPLACEME
   ```

   _NOTE: if you are using the `direnv` utility, you may edit the included
   `.direnv` file with your Sensu Enterprise repository username and password,
   and then run the `direnv allow` command to set the environment variables._

3. Optionally edit the `/files/conf.d/integrations/*.json` configuration files
   containing access keys and other account details for using the
   [Slack][slack], [PagerDuty][pagerduty], and [ServiceNow][servicenow]
   integrations – replacing the `REPLACEME` placeholders in various places in
   those configuration files.

4. Provision the virtual machine using Vagrant

   ```
   $ vagrant up
   ```

You're all done! 🎉


[vagrant]: https://www.vagrantup.com/
[vmware-fusion]: https://www.vmware.com/products/fusion.html
[vagrant-vmware]: https://www.vagrantup.com/vmware/index.html
[direnv]: https://direnv.net/
[slack]: https://docs.sensu.io/sensu-enterprise/latest/integrations/slack/
[pagerduty]: https://docs.sensu.io/sensu-enterprise/latest/integrations/pagerduty/
[servicenow]: https://docs.sensu.io/sensu-enterprise/latest/integrations/servicenow/

