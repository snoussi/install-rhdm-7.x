#!/bin/sh
AUTHORS1="Rachid Snoussi"

echo "Start Server first by running this command: ./standalone.sh -c standalone-full.xml --admin-only"

TARGET=../
#TODO: Edit EAP version
JBOSS_HOME=$TARGET/rhdm-7.11
CLI_SCRIPT=add-system-properties.cli

mkdir $JBOSS_HOME/dm-data

if [ ! -z "$CLI_SCRIPT" ]
then
	echo "Executing CLI script: " $CLI_SCRIPT
	$JBOSS_HOME/bin/jboss-cli.sh -c --file=$CLI_SCRIPT
fi

echo "Update JVM setting in /bin/standalone.config"
echo "Alternatively, you can use the following tool: https://access.redhat.com/labs/jvmconfig/ "

# JAVA_OPTS="-Xms2G -Xmx2G -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=1024m -Djava.net.preferIPv4Stack=true"
# JAVA_OPTS="$JAVA_OPTS -Djboss.modules.system.pkgs=$JBOSS_MODULES_SYSTEM_PKGS -Djava.awt.headless=true"
# JAVA_OPTS="$JAVA_OPTS -server -XX:+UseParallelGC -XX:+UseParallelOldGC"