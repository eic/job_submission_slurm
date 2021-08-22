#!/bin/bash

# Usage:
# cat << EOF | xargs -o scripts/analyze_seff_array.sh | grep 'Job Wall-clock time' | cut -d: -f2-
# cat << EOF | xargs -o scripts/analyze_seff_array.sh | grep 'Average Memory Utilized' | cut -d: -f2-
# cat << EOF | xargs -o scripts/analyze_seff_array.sh | grep "CPU Efficiency" | cut -d: -f2 | awk '{print$1}'


while [ $# -ge 1 ] ; do
  seff-array ${1}
  shift
done
