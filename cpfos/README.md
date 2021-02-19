# cpfos package system for Hardened Linux

This was developed in 2007 and 2008. It was not updated since.

## Why another package system?

The Hardened Linux security project I started in Sept-2006 was originally a 100% Slackware Linux-based distribution what means that it also used their package system (installpkg, upgradepkg and so on). I really like the Slackware package system but ...

After taking a deeper look into the shell script code of this package system I found different features Hardened Linux would never need and I also missed some features we really needed.

One of the primary reasons was the missed package creation tool (only makepkg was there what created a .tgz file and made some checks). The next big problem with the Slackware package system was the implementation of so called SlackBuild scripts. All these scripts implement lots of redundant code (for example every (or better: most) of these scripts do some cleanup stuff, creating some temporary directories and so on). Imagine that you want to change something within these scripts!

## What is it?

The Hardened Linux pkgtools contain different tools to create, install, remove and upgrade packages. They support dependencies (but without version numbers) and are VERY tiny.

## Differences to the Slackware package system:

- hlpkgtools does not only support packages. It also supports ports (auto download of archive files and md5sum checking is implemented).
- Yes, its a port system on Linux but we ship compiled ports (=packages) on the default install
- The SlackBuild script system is now replaced by build scripts that ALWAYS exit on errors (I found lots of errors in SlackBuild scripts because of this! However, since I reported the errors back to the Slackware team, they were applied in their system as well.)
- Packages are created by the cpkg tool. It automatically creates a working environment for the package build, executes the build script, checks for lots of quality problems (bad permissions and such things) and creates a gzip compressed tar archive of the package
- Two different package installation script types are supported (Slackware only has a doinst.sh): pre and postinstallation scripts. The slackware doinst.sh is also supported for backward compatibility. Yes, you can install Slackware packages with the hlpkgtools.
- All packages can be build like ports in *BSD and can also be used as normal binary packages (default)
- All packages have to contain a pkginf file that is used by all tools (including the package creation tool). This file includes different information and replaces the slack-desc file that only included a package description). Information included in this file are currently:
  - package name
  - package version
  - build number
  - archive file name
  - archive file download URLs (optional)
  - md5sum of the archive
  - default install flag
  - package description
  - dependencies ("none" if they only depend on packages of the HL minimal core install)
  - maintainer information
  - optional: TODO information
  - changelog
- Auto-download of required archive files for packages with md5sum compares
- After package installation (and after pre+post installation scripts ran fine) the installer tool checks for new versions of config files and enables you to choose whether you want to use the new config file, whether you want to keep the old one, or if you first want to highlight the differences between both files.
- The Hardened Linux pkgtools contain less lines of code
- hlpackages include 'upkg' what updates packages via the Internet (currently requires a SVN repository). We use SVN over HTTPS.
- A tool to search packages and to display package information is on the way.

## Included Tools

- cpkg: package creation tool (uses the ports to build packages)
- ipkg: installs packages
- rpkg: removes an installed package
- upkg: for online package updates (will rewrite it since I have some ideas for improvements)
- spkg: searches packages (not available at the moment)

## Documentation
 
I wrote lots of comments in the scripts to make it easy to understand the functionality.
