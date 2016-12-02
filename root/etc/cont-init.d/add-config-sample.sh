#!/bin/sh
# This copies the sample config in place if there is no exabgp.conf in place on the volume
if [ ! -f /etc/exabgp/exabgp.conf ]; then
 cp /usr/etc/exabgp/exabgp-sample.conf /etc/exabgp/exabgp.conf
fi
