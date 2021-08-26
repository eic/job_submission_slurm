#!/bin/bash

ACCOUNT=${1:-eic}

export JUGGLER_TAG=4.0-acadia-stable
#export CAMPAIGNS=/lustre03/project/6061913/wdconinc/EIC/campaigns
#export RECONSTRUCTION=/lustre03/project/6061913/wdconinc/EIC/benchmarks/reconstruction_benchmarks
export USEHEPMC3=true

sbatch --account=${ACCOUNT} --parsable --array=1-28 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/SPECTROSCOPY/psi2s_10_100.hepmc 20000
sbatch --account=${ACCOUNT} --parsable --array=1-17 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/SPECTROSCOPY/psi2s_5_100.hepmc  20000
sbatch --account=${ACCOUNT} --parsable --array=1-13 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/SPECTROSCOPY/x_10_100.hepmc     20000
sbatch --account=${ACCOUNT} --parsable --array=1-12 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/SPECTROSCOPY/x_5_100.hepmc      20000
sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/SPECTROSCOPY/y_10_100.hepmc      1250
sbatch --account=${ACCOUNT} --parsable --array=1-20 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/SPECTROSCOPY/y_5_100.hepmc       2000
