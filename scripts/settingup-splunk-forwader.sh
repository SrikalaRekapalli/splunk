# This script will setup the splunk forwarder 

#ip address of splunk server
splunkserverip=$1
logmonitorfolder=$2
clientvmname=$3

#splunk package folder

#mkdir /home/$clientvmname/splunkpkg
pwd 
mkdir splunkpkg
#cd /home/$clientvmname/splunkpkg
cd splunkpkg

#dowload the latest splunk package 

wget -O splunkforwarder-6.5.1-f74036626f0c-Linux-x86_64.tgz 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=6.5.1&product=universalforwarder&filename=splunkforwarder-6.5.1-f74036626f0c-Linux-x86_64.tgz&wget=true' 

#extract the files from zip folder
tar xvzf splunkforwarder-6.5.1-f74036626f0c-Linux-x86_64.tgz
#move the splunk to opt folder
mv splunkpkg/splunkforwarder /opt

cd /opt/splunkforwarder/bin

./splunk start --accept-license

/opt/splunkforwarder/bin/splunk add forward-server $splunkserverip:9997

./splunk add monitor $logmonitorfolder

cd /opt/splunkforwarder/bin

./splunk restart


