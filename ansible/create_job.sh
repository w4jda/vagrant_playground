#!/bin/bash

set -eu

JENKINS_URL="$1"
# get script directory
SCRIPT_DIR="$(dirname $(readlink -f $0))"

pushd $SCRIPT_DIR &>/dev/null 

if [ ! -f "jenkins-cli.jar" ] ; then
    wget -q "${JENKINS_URL}/jnlpJars/jenkins-cli.jar" -O ./jenkins-cli.jar
fi
date=$(date '+%H-%M-%S')


java -jar jenkins-cli.jar -s "${JENKINS_URL}" get-job test > jobik.xml
java -jar jenkins-cli.jar -s "${JENKINS_URL}" create-job "cron_${date}" < jobik.xml

popd &>/dev/null                                                                                                                 