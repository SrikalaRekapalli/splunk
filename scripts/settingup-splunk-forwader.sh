######################################################################################################
#    File         : settingup-splunk-forwader.sh
#    Description  : This script will install splunk universal forwader
#   Usage        : sh filename.sh splunkserverip logmonitorfolder clientvmname
######################################################################################################

#!/bin/bash

clientvmusername=$1

#splunk package folder

mkdir /home/$clientvmusername/splunkpkg
cd /home/$clientvmusername/splunkpkg

#dowload the latest splunk package

wget -O splunkforwarder-6.5.1-f74036626f0c-Linux-x86_64.tgz 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=6.5.1&product=universalforwarder&filename=splunkforwarder-6.5.1-f74036626f0c-Linux-x86_64.tgz&wget=true'

sleep 40
#extract the files from zip folder
tar xvzf splunkforwarder-6.5.1-f74036626f0c-Linux-x86_64.tgz


#move the splunk to opt folder
mv /home/$clientvmusername/splunkpkg/splunkforwarder /opt/

#cd /opt/splunkforwarder/bin

#./splunk start

#/opt/splunkforwarder/bin/splunk add forward-server $splunkserverip:9997

#./splunk add monitor $logmonitorfolder
