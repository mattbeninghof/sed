# Sensu Enterprise Demo (SED)

## Overview

This repository contains all the necessary configuration for a core demo
Sensu 1.x demo.  This script and setup can be useful as either a building block for forming a
larger demo, or as a baseline for a demo/discovery.  Please see the README.md
file for systems setup.

_NOTE: this configuration repository may be used for provisioning Sensu
Enterprise versions based on Sensu Core 1.x._

*Have an open instance of Sensu open to 0.0.0.0:3000 and [Sensu.io][Sensu.io] before starting the demo.*

Some additional configuration has also been provided for use with the following
tools, which are optional:

1. [PagerDuty][PagerDuty]
2. [ServiceNow][ServiceNow]
3. [Slack][Slack]

## Agenda

_NOTE: Ideally you should have the information before the demo on who will be
in attendance, their roles, and their team's objective or pains driving
them to look at Sensu. If not, gather this information before getting started
and then outline the proposed agenda_



1. Intro - What is Sensu?
2. Dashboard - A Single Pane Of Glass
3. Break Some Stuff - Realtime Single Source of the Truth




## Intro

1. What is Sensu? - *"Total visibility, from the server closet to the serverless cloud future."* **or** *"Monitoring wherever you have compute."*

2. Build the 5%, not the 95%

 **From Sensu.io:**
>>"Sensu allows engineering and operations teams to consolidate existing monitoring tools without sacrificing the interfaces they depend upon (e.g. Nagios plugins, StatsD libraries, Prometheus exporters, and more). Sensu is a framework for composing the unique monitoring solution your organization needs today, while simple and developer-friendly APIs ensure compatibility for the requirements of tomorrow."


  * Sensu works with:
    *  Bare metal servers
    *  Traditional VMs
    *  Public/Private Clouds (AWS, Google, ect)
    *  Containers (Docker, Kubernetes, ect)
    *  Services (APM)
    *  Applications
    *  Remote resources (Third party APIs, ect)

  **Important: Sensu works regardless of these systems formats because of native systems installers in every format. <-- We do the work for you.**

3. Spin them up, knock them down

 * Native cloud monitoring: Sensu will automatically pick up when systems are spun up and know the difference between being decommissioned and actually being down.

 **This is what we'll be showing today.**

 ## Dashboard

 _Walk through the different sections of the Sensu Dashboard._

 * Heads-Up Display: *High level infrastructure and monitoring health*
 * Events: *At a glance monitoring of events*
 * Clients: *Displays all Clients currently under monitoring*

 *Things worth mentioning:*

 *  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet elit et pulvinar pharetra. Suspendisse tempus tincidunt nisi, ac viverra risus ornare at.

 * Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet elit et pulvinar pharetra. Suspendisse tempus tincidunt nisi, ac viverra risus ornare at:
 >> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet elit et pulvinar pharetra. Suspendisse tempus tincidunt nisi, ac viverra risus ornare at.

 ## The Demo

  *  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet elit et pulvinar pharetra. Suspendisse tempus tincidunt nisi, ac viverra risus ornare at.

  *  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet elit et pulvinar pharetra. Suspendisse tempus tincidunt nisi, ac viverra risus ornare at.

  *  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet elit et pulvinar pharetra. Suspendisse tempus tincidunt nisi, ac viverra risus ornare at.

**Show Inserts**

Vagrant ssh into the machine:

```
$ vagrant ssh
```
Once in the machine, start creating inserts into the check:

```
$ echo '{"name": "ClientsCheck", "status": 0, "output": "Everything is ok! Om...."}'
```



## FIN

* Recap the agenda if pain was identified.
* Discuss open items
* Identify next steps
* Demo debrief with team
* Follow up email

:metal: :octocat:

[PagerDuty]: https://www.pagerduty.com
[ServiceNow]: https://www.servicenow.com/
[Slack]: https://slack.com/
[Sensu.io]: https://sensu.io/
