##Release Version 4a##
Data: 19.02.2013

**Tender:** 
- support auto install Informix V11.7 for 64bit Linux System
- this version only supper IDS V11.7 installation, doesn't support 11.50 installation anymore.

**feature:**
- changed rootdbs size, physicallog size logiscallog size and amount in onconfig.tmp
- extend additional chunks dbphysical and dblogical in 01_xxx.sh, and 04_xxx.sh
- changed silent installation properties file path and command in 02_xxx.sh
- changed default settings for blobspace, data00, rootdbs, temp_01, dbphysical, dblogical
- make new silent installer property file unter ./myProperties/installer.properties
- removed myServer.ini
- removed myServerTestVersion.ini
- backuped IDS1170Backup_installer.properties of properties file for silent installation
- add moving physicallog to dbphysical in 03_xxx.sh 
- extend insserv in 04_postinstallation (automatically install IDS start script in suse runlevel)

**fix:**
- bug in onconfig.tmp : where physical space too big sized
- bug in AutoBackup.tmp : no return passed to ontape
- chmod appendLogicalLog.sh deleteLogicalLog.sh in /backup/configuration/administration folder, allow informix executing

**Note:**
Since informix 11.70 installer can not recognize rootgroup user like admin, if you use the same id als root.
so you have login as root, change the admin id from 0 to e.g. 5000.
than login als root again, whoami shows that your are root instead of admin. from this point you can start this autoinstaller with **sh run_ids_installer.sh**

##Released Version 3b##
Data: 15.05.2012

**changes:**
- logrotate autoinstallation (planed not done)

**fix:**
- extend log_full.sh with Informix Dir Path, so that oncheck -r can be executed successfully  