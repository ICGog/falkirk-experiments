#!/bin/bash
procid=`grep -n \`hostname --all-ip-addresses | cut -d' ' -f2\` ~/machines  | cut -d':' -f 1` ; procid=`expr $procid - 1` ; echo $procid
