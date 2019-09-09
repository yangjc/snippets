#!/bin/sh

cd /usr/share/zoneinfo
find * -type f -exec sh -c "diff -q /etc/localtime '{}' > /dev/null && echo {}" \; -quit
