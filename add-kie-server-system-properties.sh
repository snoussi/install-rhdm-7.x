#!/bin/sh
AUTHORS1="Rachid Snoussi"

echo "Start Server first by running this command: ./standalone.sh -c standalone-full.xml --admin-only"

TARGET=../
JBOSS_HOME=$TARGET/rhdm-7.3.0
CLI_SCRIPT=add-kie-server-system-properties.cli

echo "Adding a kieserverUser user on JBoss EAP ..."
echo
$JBOSS_HOME/bin/add-user.sh -a -r ApplicationRealm -u dsUser -p dsUser1! -ro kie-server --silent
if [ $? -ne 0 ]; then
  echo
  echo Error occurred during user adding !
  exit
fi

if [ ! -z "$CLI_SCRIPT" ]
then
	echo "Executing CLI script: " $CLI_SCRIPT
	$JBOSS_HOME/bin/jboss-cli.sh -c --file=$CLI_SCRIPT
fi