#!/bin/bash

ACCOUNT=${1:-eic}

export JUGGLER_TAG=4.0-acadia-stable
#export CAMPAIGNS=/lustre03/project/6061913/wdconinc/EIC/campaigns
#export RECONSTRUCTION=/lustre03/project/6061913/wdconinc/EIC/benchmarks/reconstruction_benchmarks
export USEHEPMC3=false

sbatch --account=${ACCOUNT} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/18x275/minQ2=1000/pythia8NCDIS_18x275_minQ2=1000_beamEffects_xAngle=-0.025_hiDiv_1.hepmc   4000
sbatch --account=${ACCOUNT} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/18x275/minQ2=100/pythia8NCDIS_18x275_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc     4000
sbatch --account=${ACCOUNT} --parsable --array=1-125 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/18x275/minQ2=10/pythia8NCDIS_18x275_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc       8000
sbatch --account=${ACCOUNT} --parsable --array=1-125 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/18x275/minQ2=1/pythia8NCDIS_18x275_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc         8000
sbatch --account=${ACCOUNT} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x275/minQ2=1000/pythia8NCDIS_10x275_minQ2=1000_beamEffects_xAngle=-0.025_hiDiv_1.hepmc   4000
sbatch --account=${ACCOUNT} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x275/minQ2=100/pythia8NCDIS_10x275_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc     4000
sbatch --account=${ACCOUNT} --parsable --array=1-125 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x275/minQ2=10/pythia8NCDIS_10x275_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc       8000
sbatch --account=${ACCOUNT} --parsable --array=1-125 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x275/minQ2=1/pythia8NCDIS_10x275_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc         8000
sbatch --account=${ACCOUNT} --parsable --array=1-125 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x100/minQ2=1000/pythia8NCDIS_10x100_minQ2=1000_beamEffects_xAngle=-0.025_hiDiv_1.hepmc   8000
sbatch --account=${ACCOUNT} --parsable --array=1-125 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x100/minQ2=100/pythia8NCDIS_10x100_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc     8000
sbatch --account=${ACCOUNT} --parsable --array=1-100 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x100/minQ2=10/pythia8NCDIS_10x100_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc      10000
sbatch --account=${ACCOUNT} --parsable --array=1-100 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/10x100/minQ2=1/pythia8NCDIS_10x100_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc        10000
sbatch --account=${ACCOUNT} --parsable --array=1-125 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x100/minQ2=1000/pythia8NCDIS_5x100_minQ2=1000_beamEffects_xAngle=-0.025_hiDiv_1.hepmc     8000
sbatch --account=${ACCOUNT} --parsable --array=1-100 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x100/minQ2=100/pythia8NCDIS_5x100_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc      10000
sbatch --account=${ACCOUNT} --parsable --array=1-100 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x100/minQ2=10/pythia8NCDIS_5x100_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc        10000
sbatch --account=${ACCOUNT} --parsable --array=1-50  --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x100/minQ2=1/pythia8NCDIS_5x100_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc          20000
sbatch --account=${ACCOUNT} --parsable --array=1-100 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x41/minQ2=100/pythia8NCDIS_5x41_minQ2=100_beamEffects_xAngle=-0.025_hiDiv_1.hepmc        10000
sbatch --account=${ACCOUNT} --parsable --array=1-50  --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x41/minQ2=10/pythia8NCDIS_5x41_minQ2=10_beamEffects_xAngle=-0.025_hiDiv_1.hepmc          20000
sbatch --account=${ACCOUNT} --parsable --array=1-50  --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DIS/NC/5x41/minQ2=1/pythia8NCDIS_5x41_minQ2=1_beamEffects_xAngle=-0.025_hiDiv_1.hepmc            20000
