#!/bin/sh
# written & copyright 2007 by Steffen Wendzel

echo "re-creating manpage links for cpfos ..."
if [ ! usr/man/man8 ]; then
	mkdir -p usr/man/man8
	chown root usr/man/man8
	chmod 744 usr/man/man8
fi
cd usr/man/man8

# don't remove cpfos.8.gz here since ipkg already installed our new one there
# and dont use cool regex (=[iurcs]pkg.8{.gz,} cpfos.8 s2hinf.8{.gz,}) since
# busybox will not work with that :-(
rm -f	ipkg.8 ipkg.8.gz \
	upkg.8 upkg.8.gz \
	rpkg.8 rpkg.8.gz \
	cpkg.8 cpkg.8.gz \
	spkg.8 spkg.8.gz \
	cpfos.8 \
	s2hinf.8 s2hinf.8.gz

for tool in ipkg upkg rpkg cpkg spkg s2hinf; do
	ln cpfos.8.gz ${tool}.8.gz
done


