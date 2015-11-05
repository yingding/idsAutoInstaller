#!/bin/sh

#initial DB Server as user informix 
set -x 
echo "Answer yes to new initialize the rootdbs for new DB Server"
#set local env variables for subshell
. /etc/profile.local
echo $INFORMIXDIR

su informix -c 'oninit -ivy';
su informix -c 'onstat -'

su informix -c 'onspaces -c -b blobspace -g 4 -p /db-spaces/01/blob-space01 -o 0 -s 1000000';
#create blobspace with page size 8KB (-g 4) and size 1GB (-s)
su informix -c 'onspaces -c -d dbs_temp01 -k 4 -t -p /db-spaces/01/dbs-temp01 -o 0 -s 1000000';
#create dbs_temp01 with page size 4KB and size 1GB (-s)
su informix -c 'onspaces -c -d datadbs00 -k 4 -p /db-spaces/01/datadbs00 -o 0 -s 30000000';
#create datadbs00 with page size 4KB and size 30GB (-s)

echo "Adding DB-Spaces Done"
echo "End of the installation"

echo `whoami`
exit 0







