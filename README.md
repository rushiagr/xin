Xin
===
Installer for common development tools in the quickest, simplest way.

The aim of this project is to provide the simplest way to install a development tool. For example, you should take any development machine and run `xin_docker` and it will install and configure docker on your system, irrespective of if you are on Ubuntu, Fedora, or a Mac. We're employing shell scripts to achieve this goal.

The aim is to provide a quick development environment. The project's aim is not to simplify production deployments, taking care of security, ease of deployment, installation of packages/files on the system in the cleanest possible manner, etc.

It is assumed (for now) that Internet is available on the system

Right now, it just supports installing docker on an Ubuntu Xenial machine.

Setup
-----
Source the `main.sh` file:

    source main.sh

'Xpress INstallation'
---------------------

Install and set up docker (only on Ubuntu Xenial as of now):

    xin_docker

TODOs
-----

Common development tools which I think are good candidates for this project: Vagrant, docker, virtualbox, git, python (python2 and python3).

Some other small-ish TODOs for future:

    # TODO(rushiagr): check if the system has bash, and is new enough to support all our commands
    # TODO(rushiagr): Better-looking output of a xin_* command
    # TODO(rushiagr): check if Internet is active on system using 'ping', and bail out if it isn't
    # TODO(rushiagr): also handle the case if 'ping' is not installed on the system
    # TODO(rushiagr): better way to check internet connectivity than using 'ping'?

