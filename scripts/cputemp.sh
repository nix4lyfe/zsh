#!/bin/bash
cputemp0=`cat /sys/class/thermal/thermal_zone0/temp`
cputemp1=$(($cputemp0/1000))
cputemp2=$(($cputemp0/100))
cputemp=$(($cputemp2%$cputemp1))
echo CPU temp=$cputemp1.$cputemp C &&
exit
