#!/bin/sh

#set -x
echo "Silent install IDS Server Component... this may take several minutes"
#getting local env variables for subshell
. /etc/profile.local
currentDir=`pwd`
cd /tmp/infinstall/SERVER
. /tmp/infinstall/SERVER/installserver -silent -acceptlicense=yes -options myServer.ini -log /tmp/infinstall/IDSInstall.log;
echo "Server installation Closed"
cd $currentDir
exit 0
