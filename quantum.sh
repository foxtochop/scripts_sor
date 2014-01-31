#!/bin/bash
pid=$1
nice1=$(ps -eo pid,nice | grep "^ *$pid " | cut -c7-)
if [ "$nice1" -ge "0" ]; then
quantum=$[(20-$nice1)*5]
else
quantum=$[(20-$nice1)*20]
fi

echo $quantum

