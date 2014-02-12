#!/usr/bin/env bash
[ $(id -u) -eq 0 ] || { echo need to be root to run this; exit 1; }
cwd=$(dirname $0); cd $cwd
set -x
chef-solo -c solo.rb -j node.json $@ 	# e.g. -l debug || -l info
