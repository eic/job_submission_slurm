#!/bin/bash

export JUGGLER_TAG=${1:-nightly}

echo "JUGGLER_TAG=${JUGGLER_TAG}"
echo "CAMPAIGNS=${CAMPAIGNS}"
echo "BENCHMARKS=${BENCHMARKS}"
echo "SBATCH_ACCOUNT=${SBATCH_ACCOUNT?Set SBATCH_ACCOUNT to the project account}"

SBATCH="sbatch --mail-user=${EMAIL:-${USER}@jlab.org} --parsable --requeue --time=36:00:00"

export USEHEPMC3=true

for i in `seq 1 10` ; do

  # TCS 18x275 hel_plus
  ${SBATCH} --array=1-50 scripts/submit.sh hepmc3 EVGEN/TCS/18x275/hel_plus/tcs_18x275_${i}.hepmc  20000
  # TCS 18x275 hel_minus
  ${SBATCH} --array=1-50 scripts/submit.sh hepmc3 EVGEN/TCS/18x275/hel_minus/tcs_18x275_lep_hel_flip_${i}.hepmc  20000
  # TCS_BH_TCS+BH 18x275 hel_plus
  ${SBATCH} --array=1-50 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/18x275/hel_plus/tcs_bh_int_18x275_${i}.hepmc  20000
  # TCS_BH_TCS+BH 18x275 hel_minus
  ${SBATCH} --array=1-50 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/18x275/hel_minus/tcs_bh_int_18x275_lep_hel_flip_${i}.hepmc  20000

  # TCS 10x100 hel_plus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/10x100/hel_plus/tcs_10x100_${i}.hepmc  25000
  # TCS 10x100 hel_minus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/10x100/hel_minus/tcs_10x100_lep_hel_flip_${i}.hepmc  25000
  # TCS_BH_TCS+BH 10x100 hel_plus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/10x100/hel_plus/tcs_bh_int_10x100_${i}.hepmc  25000
  # TCS_BH_TCS+BH 10x100 hel_minus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/10x100/hel_minus/tcs_bh_int_10x100_lep_hel_flip_${i}.hepmc  25000

  # TCS 5x41 hel_plus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/5x41/hel_plus/tcs_5x41_${i}.hepmc      25000
  # TCS 5x41 hel_minus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/5x41/hel_minus/tcs_5x41_lep_hel_flip_${i}.hepmc      25000
  # TCS_BH_TCS+BH 5x41 hel_plus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/5x41/hel_plus/tcs_bh_int_5x41_${i}.hepmc      25000
  # TCS_BH_TCS+BH 5x41 hel_minus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/TCS_BH_TCS+BH/5x41/hel_minus/tcs_bh_int_5x41_lep_hel_flip_${i}.hepmc      25000

  # TCS 5x100 hel_plus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/5x100/hel_plus/tcs_5x100_${i}.hepmc    25000
  # TCS 5x100 hel_minus
  ${SBATCH} --array=1-40 scripts/submit.sh hepmc3 EVGEN/TCS/5x100/hel_minus/tcs_5x100_lep_hel_flip_${i}.hepmc    25000

done

