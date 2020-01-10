#!/bin/bash

if [ -f etc/rc.d/rc.hlhs.new ]; then
	chmod 744 etc/rc.d/rc.hlhs.new
else
	chmod 744 etc/rc.d/rc.hlhs
fi

chmod 700 usr/sbin/hlhs


