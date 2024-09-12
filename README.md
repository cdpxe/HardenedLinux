# Hardened Linux (Scripts)

This repository is a partial clone of my former Linux distribution *[Hardened Linux](http://hardenedlinux.sourceforge.net/) ([here](https://sourceforge.net/p/hardenedlinux/code/HEAD/tree/)* is the original SVN repository). Early versions of Hardened Linux were called *Wendzel Linux*. Hardened Linux was a Slackware-based distribution. Its **development started in 2006 and it ended two years later** due to a lack of manpower required to keep all the packages up-to-date. However, some scripts might still be useful for today's Slackware users. More of my research projects and papers can be found on [my website](https://www.wendzel.de).

This repository contains the following items:

- [hlhs](https://github.com/cdpxe/HardenedLinux/tree/master/hlhs) - Hardened Linux Hardening Scripts: shell scripts to help harden your Linux distribution (especially Slackware)
- [cpfos](https://github.com/cdpxe/HardenedLinux/tree/master/cpfos) - My own BSD-like ports and package system for Linux that runs on top of the Slackware package format. This is probably not too useful these days as it requires the Hardened Linux SVN repository with updated packages. However, it contains some additional features in comparison to the standard Slackware package management.
- *external ressources:*
   - [Original SVN repository, containing base system and all packages](https://sourceforge.net/p/hardenedlinux/code/HEAD/tree/) - hosted on sf.net
   - [ISO images](https://sourceforge.net/projects/hardenedlinux/) - download the original ISO images (latest update: 2007)
   - [Original documentation](https://sourceforge.net/p/hardenedlinux/code/HEAD/tree/doc/) (web-SVN access)

## Introduction

Hardened Linux is a hardened and minimalized distribution developed by the OSS community. A huge part of the distribution is based on Slackware (tm) Linux.

<img src="http://hardenedlinux.sourceforge.net/images/hl_logo_small.png" />

### Some Features
HL is based on Slackware-Linux and designed to run on firewalls, IDS systems and VPN gateways. Additional features: grsecurity hardened kernel, userspace hardening, a gcc with SSP patch, hardened (SSP) packages, hardened file system permissions, hardened configuration files for services, kernel 2.4 and 2.6.

The system was designed to be very tiny (only 200 MB ISO file) and easy to understand. An own packet system (the hardened linux package tools) was  build as an improvement for the existing Slackware package system.

#### The Hardened Linux Hardening Scripts (HLHS)
see above
 
#### The Hardened Linux cpfos Package System
see above
