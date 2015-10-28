#!/bin/sh

DATADIR=/opt/vyatta/share
SBINDIR=/opt/vyatta/sbin

mkdir -p "${DESTDIR}${DATADIR}/vyatta-cfg/templates"
cp -ar templates-cfg/* "${DESTDIR}${DATADIR}/vyatta-cfg/templates"

mkdir -p "${DESTDIR}${DATADIR}/vyatta-op/templates"
cp -ar templates-op/* "${DESTDIR}${DATADIR}/vyatta-op/templates"

mkdir -p "${DESTDIR}${SBINDIR}"
cp -a scripts/vyatta-update-aiccu "${DESTDIR}${SBINDIR}"

mkdir -p "${DESTDIR}/etc/insserv/overrides"
cp -ar debian/insserv.overrides.aiccu "${DESTDIR}/etc/insserv/overrides"

mkdir -p "${DESTDIR}/etc/netdevice.d"
cp -ar etc/netdevice.d/aiccu "${DESTDIR}/etc/netdevice.d"
