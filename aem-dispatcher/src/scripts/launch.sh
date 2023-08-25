#!/bin/sh

rm -f /run/httpd/httpd.pid
/usr/sbin/httpd -D FOREGROUND
