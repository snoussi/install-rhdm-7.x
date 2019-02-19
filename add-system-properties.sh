#!/bin/sh
AUTHORS1="Rachid Snoussi"

echo "Start Server first by running this command: ./standalone.sh -c standalone-full.xml --admin-only"

TARGET=../
#TODO: Edit EAP version
JBOSS_HOME=$TARGET/rhdm-7.2.1
CLI_SCRIPT=add-system-properties.cli

mkdir $JBOSS_HOME/dm-data

if [ ! -z "$CLI_SCRIPT" ]
then
	echo "Executing CLI script: " $CLI_SCRIPT
	$JBOSS_HOME/bin/jboss-cli.sh -c --file=$CLI_SCRIPT
fi