#!/bin/sh
# This copies the sample config in place if there is no exabgp.conf in place on the volume
if [ ! -f /etc/exabgp/exabgp.conf ]; then
 cp /usr/etc/exabgp/exabgp-sample.conf /etc/exabgp/exabgp.conf
fi
# If no environment file found, create it
if [ ! -f /etc/exabgp/exabgp.env ]; then
    exabgp --folder /etc/exabgp --fi > /etc/exabgp/exabgp.env
fi
