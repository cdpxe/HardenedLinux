# Hardened Linux Scripts

This repository is a partial clone of my former Linux distribution *[Hardened Linux](http://hardenedlinux.sourceforge.net/) ([here](https://sourceforge.net/p/hardenedlinux/code/HEAD/tree/)* is the original SVN repository). Early versions of Hardened Linux were called *Wendzel Linux*. Hardened Linux was a Slackware-based distribution. Its development started in 2006 and it ended two years later due to a lack of manpower required to keep all the packages up-to-date. However, some scripts might still be useful for today's Slackware users. This repository contains the following items:

- [hlhs](https://github.com/cdpxe/HardenedLinux/tree/master/hlhs) - Hardened Linux Hardening Scripts: shell scripts to help harden your Linux distribution (especially Slackware)
- [cpfos](https://github.com/cdpxe/HardenedLinux/tree/master/cpfos) - My own BSD-like ports and package system for Linux that runs on top of the Slackware package format. This is probably not too useful these days as it requires the Hardened Linux SVN repository with updated packages. However, it contains some additional features in comparison to the standard Slackware package management.

## TODO

- make hlhs work again on today's version of Slackware and other distributions
- extend hlhs functionality, make it a suitable tool that runs at least on state-of-the-art Debian, Ubuntu, Slackware distributions
