#!/bin/bash
batterycsv="$HOME/.battery_profile.csv"

function charge(){
  echo $(system_profiler SPPowerDataType | grep 'Charge Remaining' | sed 's/[^0-9]*//g')
}

function capacity(){
  echo $(system_profiler SPPowerDataType | grep 'Full Charge Capacity' | sed 's/[^0-9]*//g')
}

function counts(){
  echo $(system_profiler SPPowerDataType | grep 'Cycle Count' | sed 's/[^0-9]*//g')
}

function amperage(){
  echo $(system_profiler SPPowerDataType | grep 'Amperage' | sed 's/[^0-9]*//g')
}

function voltage(){
  echo $(system_profiler SPPowerDataType | grep 'Voltage' | sed 's/[^0-9]*//g')
}

export GREP_OPTIONS="--color=never"
# saving order:
# hh:mm:ss, dd.mm.yy, charge, capacity, counts, amperage, voltage
printf "$(date +%H:%M:%S,%d.%m.%Y),%s,%s,%s,%s,%s\n" $(charge) $(capacity) $(counts) $(amperage) $(voltage) >> $batterycsv