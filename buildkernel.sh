#!/bin/sh
CPUCOUNT=`sysctl -a | egrep -i 'hw.ncpu' | awk '{ print $2 }'`
echo CPU count is: $CPUCOUNT
cd /usr/src
make buildkernel KERNCONF=h9k -j$CPUCOUNT
