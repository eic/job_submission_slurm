#!/bin/bash

ACCOUNT=${1:-eic}
EMAIL=${2:-${USER}@jlab.org}

export JUGGLER_TAG=4.0-acadia-stable
#export CAMPAIGNS=$(realpath ~/EIC/campaigns)
#export RECONSTRUCTION=$(realpath ~/EIC/benchmarks/reconstruction_benchmarks)
export USEHEPMC3=true

sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-5 --time=4:00:00 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/omega/u_omegaNeutralDecay_5x41GeV_5k_Q2_0_1.hepmc 1000
sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-5 --time=4:00:00 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/omega/u_omegaNeutralDecay_5x41GeV_5k_Q2_1_5.hepmc 1000

sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-213 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/DEMP/eic_DEMPGen_10on100_1B_1_100.hepmc 1000
sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-347 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/DEMP/eic_DEMPGen_5on100_1B_1_100.hepmc  5000
sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-713 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/DEMP/eic_DEMPGen_5on41_Q2_5_1B_1_100.hepmc 25000
sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-341 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/DEMP/eic_DEMPGen_KLambda_5on41_1B_1_10.hepmc 5000

