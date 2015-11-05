#!/bin/sh

#initial DB Server as user informix 
set -x 
echo "Answer yes to new initialize the rootdbs for new DB Server"
#set local env variables for subshell
. /etc/profile.local
echo $INFORMIXDIR

# su informix -c 'oninit -ivy';
su informix -c 'onstat -'

su informix -c 'onspaces -c -b blobspace -g 4 -p /db-spaces/01/blob-space01 -o 0 -s 3000000';
#create blobspace with page size 8KB (-g 4) and size 3GB (-s)
su informix -c 'onspaces -c -d dbs_temp01 -k 4 -t -p /db-spaces/01/dbs-temp01 -o 0 -s 10000000';
#create dbs_temp01 with page size 4KB and size 10GB (-s)
su informix -c 'onspaces -c -d datadbs00 -k 4 -p /db-spaces/01/datadbs00 -o 0 -s 90000000';
#create datadbs00 with page size 4KB and size 90GB (-s)

echo "Adding additional chunks"
su informix -c 'onspaces -c -d dbphysical -k 2 -p /db-spaces/01/dbphysical01 -o 0 -s 30000000';
#create dbphysical01 with page size 2KB and size 30GB (-s)
su informix -c 'onspaces -c -d dblogical -k 2 -p /db-spaces/01/dblogical01 -o 0 -s 30000000';
#create dplogical01 with page size 2KB and size 30GB (-s)
echo "Adding DB-Spaces Done" 

echo "Changing dbphysical"
su informix -c 'onparams -p -s 29000000 -d dbphysical -y';
#allocating 29 GB dbphysical
echo "End of the installation"

echo "please execute:"
echo "/backup/configurations/administration/appendLogicalLog.sh"
echo "to append new logs."
echo "For 30GB logical log you can use size 100000 (200MB) each logfile"
echo "And 120 Logs in total."
echo "After log appendence please execute:"
echo "/backup/configurations/administration/deleteLogicalLog.sh"
echo "to delete the old log files."
echo `whoami`
exit 0







