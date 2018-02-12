#!/bin/bash
parallel-ssh -h ~/caelum_tmp -i " cd /tmp/falkirk ; grep 'AFR' controlle* "
parallel-ssh -h ~/caelum_tmp -i " cd /tmp/falkirk ; grep ' P ' controlle* " | cut -d' ' -f9
