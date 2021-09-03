#!/bin/bash

# Usage:
# cat << EOF | xargs -o scripts/analyze_seff_array.sh | grep 'Job Wall-clock time' | cut -d: -f2-
# cat << EOF | xargs -o scripts/analyze_seff_array.sh | grep 'Average Memory Utilized' | cut -d: -f2-
# cat << EOF | xargs -o scripts/analyze_seff_array.sh | grep "CPU Efficiency" | cut -d: -f2 | awk '{print$1}'
# cat << EOF | while read jobid ; do
#  echo "$jobid
#        $(scripts/analyze_seff_array.sh $jobid 2> /dev/null | grep "CPU Efficiency" | cut -d: -f2 | awk '{print$1}')
#        $(scripts/analyze_seff_array.sh $jobid 2> /dev/null | grep 'Average Memory Utilized' | cut -d: -f2-)
#        $(scripts/analyze_seff_array.sh $jobid 2> /dev/null | grep 'Job Wall-clock time' | cut -d: -f2-)" ;
# done

while [ $# -ge 1 ] ; do
  seff-array ${1}
  shift
done
