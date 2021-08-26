#!/bin/bash

ACCOUNT=${1:-eic}

export JUGGLER_TAG=4.0-acadia-stable
export USEHEPMC3=true

for i in `seq 1 2` ; do

  # TCS 18x275 hel_plus
  sbatch --account=${ACCOUNT} --parsable --array=1-25 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/18x275/hel_plus/tcs_18x275_${i}.hepmc  40000
  # TCS 18x275 hel_minus
  sbatch --account=${ACCOUNT} --parsable --array=1-25 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/18x275/hel_minus/tcs_18x275_lep_hel_flip_${i}.hepmc  40000
  # TCS_BH_TCS+BH 18x275 hel_plus
  sbatch --account=${ACCOUNT} --parsable --array=1-25 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/18x275/hel_plus/tcs_bh_int_18x275_${i}.hepmc  40000
  # TCS_BH_TCS+BH 18x275 hel_minus
  sbatch --account=${ACCOUNT} --parsable --array=1-25 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/18x275/hel_minus/tcs_bh_int_18x275_lep_hel_flip_${i}.hepmc  40000

  # TCS 10x100 hel_plus
  sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/10x100/hel_plus/tcs_10x100_${i}.hepmc  50000
  # TCS 10x100 hel_minus
  sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/10x100/hel_minus/tcs_10x100_lep_hel_flip_${i}.hepmc  50000
  # TCS_BH_TCS+BH 10x100 hel_plus
  sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/10x100/hel_plus/tcs_bh_int_10x100_${i}.hepmc  50000
  # TCS_BH_TCS+BH 10x100 hel_minus
  sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/10x100/hel_minus/tcs_bh_int_10x100_lep_hel_flip_${i}.hepmc  50000

  # TCS 5x41 hel_plus
  sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/5x41/hel_plus/tcs_5x41_${i}.hepmc      50000
  # TCS 5x41 hel_minus
  sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/5x41/hel_minus/tcs_5x41_lep_hel_flip_${i}.hepmc      50000
  # TCS_BH_TCS+BH 5x41 hel_plus
  sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/5x41/hel_plus/tcs_bh_int_5x41_${i}.hepmc      50000
  # TCS_BH_TCS+BH 5x41 hel_minus
  sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/5x41/hel_minus/tcs_bh_int_5x41_lep_hel_flip_${i}.hepmc      50000

  # TCS 5x100 hel_plus
  #sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/5x100/hel_plus/tcs_5x100_${i}.hepmc    50000
  # TCS 5x100 hel_minus
  #sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/TCS/5x100/hel_minus/tcs_5x100_lep_hel_flip_${i}.hepmc    50000

done
