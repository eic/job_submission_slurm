#!/bin/bash

ACCOUNT=${1:-eic}
EMAIL=${2:-${USER}@jlab.org}

export JUGGLER_TAG=4.0-acadia-stable
#export CAMPAIGNS=/lustre19/expphy/volatile/eic/wdconinc/campaigns
#export RECONSTRUCTION=/lustre19/expphy/volatile/eic/wdconinc/benchmarks/reconstruction_benchmarks
export USEHEPMC3=false

SBATCH="sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable"

# CC
${SBATCH} --array=1-250 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/CC/18x275/minQ2=100/pythia8CCDIS_18x275_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc     4000

# NC
${SBATCH} --array=1-250 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/18x275/minQ2=1000/pythia8NCDIS_18x275_minQ2=1000_beamEffects_xAngle=-0.025_hiDiv_1.hepmc   4000
${SBATCH} --array=1-250 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/18x275/minQ2=100/pythia8NCDIS_18x275_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc     4000
${SBATCH} --array=1-125 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/18x275/minQ2=10/pythia8NCDIS_18x275_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc       8000
${SBATCH} --array=1-125 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/18x275/minQ2=1/pythia8NCDIS_18x275_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc         8000
${SBATCH} --array=1-250 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x275/minQ2=1000/pythia8NCDIS_10x275_minQ2=1000_beamEffects_xAngle=-0.025_hiDiv_1.hepmc   4000
${SBATCH} --array=1-250 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x275/minQ2=100/pythia8NCDIS_10x275_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc     4000
${SBATCH} --array=1-125 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x275/minQ2=10/pythia8NCDIS_10x275_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc       8000
${SBATCH} --array=1-125 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x275/minQ2=1/pythia8NCDIS_10x275_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc         8000
${SBATCH} --array=1-125 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x100/minQ2=1000/pythia8NCDIS_10x100_minQ2=1000_beamEffects_xAngle=-0.025_hiDiv_1.hepmc   8000
${SBATCH} --array=1-125 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x100/minQ2=100/pythia8NCDIS_10x100_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc     8000
${SBATCH} --array=1-100 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x100/minQ2=10/pythia8NCDIS_10x100_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc      10000
${SBATCH} --array=1-100 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x100/minQ2=1/pythia8NCDIS_10x100_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc        10000
${SBATCH} --array=1-125 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x100/minQ2=1000/pythia8NCDIS_5x100_minQ2=1000_beamEffects_xAngle=-0.025_hiDiv_1.hepmc     8000
${SBATCH} --array=1-100 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x100/minQ2=100/pythia8NCDIS_5x100_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc      10000
${SBATCH} --array=1-100 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x100/minQ2=10/pythia8NCDIS_5x100_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc        10000
${SBATCH} --array=1-50  --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x100/minQ2=1/pythia8NCDIS_5x100_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc          20000
${SBATCH} --array=1-100 --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x41/minQ2=100/pythia8NCDIS_5x41_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc        10000
${SBATCH} --array=1-50  --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x41/minQ2=10/pythia8NCDIS_5x41_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc          20000
${SBATCH} --array=1-50  --time=36:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x41/minQ2=1/pythia8NCDIS_5x41_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc            20000
