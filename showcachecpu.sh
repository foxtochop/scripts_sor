#!/bin/bash
fpu=$(cat /proc/cpuinfo | grep -P "^fpu\s*:" | cut -d ":" -f2)
nombre_cpu=$(cat /proc/cpuinfo | grep "^model name" | cut -d ":" -f2)
cache=$(cat /proc/cpuinfo | grep "^cache size" | cut -d ":" -f2 | cut -d " " -f2 )
if [ "$fpu" == " yes" ]; then
echo la cache de $nombre_cpu es $cache KiB y tiene FPU
else
echo la cache de $nombre_cpu es $cache KiB y no tiene FPU
fi
