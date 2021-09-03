#!/bin/bash

export JUGGLER_TAG=nightly
export CAMPAIGNS=$(realpath ~/EIC/campaigns)
export RECONSTRUCTION=$(realpath ~/EIC/benchmarks/reconstruction_benchmarks)
export USEHEPMC3=true

SBATCH="sbatch --parsable --time=24:00:00"

${SBATCH} --array=1-500 scripts/submit.sh hepmc3 EVGEN/SIDIS/ep_18x110.hepmc 2000
${SBATCH} --array=1-5   scripts/submit.sh hepmc3 EVGEN/SIDIS/Lambda/hepmc_P8test.hepmc

for i in `seq 1 100` ; do
  ${SBATCH} --array=1-5 scripts/submit.sh hepmc3 EVGEN/SIDIS/dis_eicBeam_eA_18x110/out_${i}.hepmc 2000
done
