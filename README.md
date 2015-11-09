# idsAutoInstaller
this repository provides some bash scripts and config files to allow quick installation of IBM Informix Database Server

## Release change notes
[go to current release notes](/RELEASE_NOTES.md/)

## A short introduction of usage
Created on July.27 2010

The version idsAutoInstaller3b is assembled with predefined configuration- and installation templates, which is specified for IBM IDS 11.50x one instance database server.

The version idsAutoInstaller4a is assembled with predefined configuration- and installation templates, which is specified for IBM IDS 11.70x one instance database server.

**Note:** This installer is only applicable for Linux System (SLES 10/11).
**Note:** Please do NOT edit any of provided files in a microsoft windows editor.

##Quick start guide

- copy the idsAutoInstaller<X> in your local /tmp directory on your linux server
- copy your licensed IBM IDS Server xxxxx.tar in the /tmp/idsAutoInstaller<X> directory, so that the idsAutoInstaller can use this tar file to install.
- start "run_ids_installer.sh" as "root" with **sh run_ids_installer.sh**.


##Advanced start guide:

- copy the idsAutoInstaller<X> in your local /tmp directory on your linux server

**Note:** Please change the global variables in the script as your need, before you execute the scripts. The main function of each scripts can be found in Readme.txt file within the idsAutoInstaller directory. 
 
01_preconfigIDSDB.sh
02_install.sh
03_prostconfigIDSDB.sh
04_postinstall.sh
