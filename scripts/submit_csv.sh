#!/bin/bash
set -Euo pipefail
trap 's=$?; echo "$0: Error on line "$LINENO": $BASH_COMMAND"; exit $s' ERR
IFS=$'\n\t'

# check arguments
if [ $# -lt 2 ] ; then
  echo "Usage: "
  echo "  $0 <template> <type> <file or url> [target hours = 2]"
  exit
fi

# Project configuration
BASEURL="https://eicweb.phy.anl.gov/api/v4/projects/491/jobs/artifacts/main/raw/results/datasets/timings/"
BASEJOB="?job=collect"

# Parse arguments
# - type of simulation
TYPE=${1}
shift
# - input file
FILE=${1}
shift
# - target hours
TARGET=${1:-2}
shift

# Parse input URI
if [ -f "${FILE}" ] ; then
  echo "Using local file as input"
  INPUT=(cat ${FILE})
else
  echo "Using ${BASEURL}${FILE}${BASEJOB} as input"
  INPUT=(curl ${BASEURL}${FILE}${BASEJOB})
fi

# Loop over input
SBATCH=(sbatch --mail-user=${EMAIL:-${USER}@jlab.org} --parsable --requeue --time=$((2*TARGET)):00:00)
"${INPUT[@]}" | grep -v ^curl | while IFS="," read file ntotal dt0 dt1 ; do
  if [ -z "${file}" ] ; then
    continue
  fi
  nevents=$(echo "n=(3600*$TARGET-$dt0)/$dt1; if (n>$ntotal) print($ntotal) else print(n)" | bc)
  nchunks=$(echo "n=$ntotal/$nevents; if (n==0) print(1) else print(n)" | bc)
  echo "${file}: ${dt0}+N*${dt1} s, for ${nchunks} chunks for ${TARGET} hours. Submit? [Y,n] "
  "${SBATCH[@]}" --array=1-${nchunks} $(dirname $0)/submit.sh ${TYPE} ${file} ${nevents}
done | tee $(basename ${FILE} .csv)-$(date --iso-8601=minutes).log
