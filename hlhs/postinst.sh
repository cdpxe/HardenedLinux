#!/bin/bash

if [ -f etc/rc.d/rc.hlhs.new ]; then
	chmod 744 etc/rc.d/rc.hlhs.new
else
	chmod 744 etc/rc.d/rc.hlhs
fi

if [ -f etc/hlhs_bad.users.conf.new ]; then
	chmod 744 etc/hlhs_bad.users.conf.new
else
	chmod 744 etc/hlhs_bad.users.conf
fi

chmod 700 usr/sbin/hlhs


