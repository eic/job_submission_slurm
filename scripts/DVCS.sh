#!/bin/bash

ACCOUNT=${1:-eic}
EMAIL=${2:-${USER}@jlab.org}

export JUGGLER_TAG=4.0-acadia-stable
#export CAMPAIGNS=/lustre19/expphy/volatile/eic/wdconinc/campaigns
#export RECONSTRUCTION=/lustre19/expphy/volatile/eic/wdconinc/benchmarks/reconstruction_benchmarks
export USEHEPMC3=true

sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_18x275_2M/DVCS.1.hepmc 4000
sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_18x275_2M/DVCS.2.hepmc 4000
sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_10x100_2M/DVCS.1.hepmc 4000
sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_10x100_2M/DVCS.2.hepmc 4000
sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_5x41_1M/DVCS.1.hepmc   4000

