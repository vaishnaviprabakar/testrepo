#!/bin/bash
AGENT=$1
PKG=$(ssh -o LogLevel=quiet $AGENT "rpm -q puppet-agent|head -1")
if [[ $PKG == *"puppet-agent"* ]]
 then
	echo "Good to migrate"
else
	exit
fi
