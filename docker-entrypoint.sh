#!/bin/sh

# Source all the variables
. /etc/default/varnish

# Start Varnishd
exec /usr/sbin/varnishd -F \
  -f $VARNISH_VCL_CONF \
  -a :$VARNISH_LISTEN_PORT \
  -T :$VARNISH_ADMIN_LISTEN_PORT \
  -S $VARNISH_SECRET_FILE \
  -s $VARNISH_STORAGE \
  $DAEMON_OPTS
