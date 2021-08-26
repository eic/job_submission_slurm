#!/bin/bash

ACCOUNT=${1:-eic}

export JUGGLER_TAG=4.0-acadia-stable
#export CAMPAIGNS=/lustre03/project/6061913/wdconinc/EIC/campaigns
#export RECONSTRUCTION=/lustre03/project/6061913/wdconinc/EIC/benchmarks/reconstruction_benchmarks
export USEHEPMC3=true

sbatch --account=${ACCOUNT} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_18x275_2M/DVCS.1.hepmc 4000
sbatch --account=${ACCOUNT} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_18x275_2M/DVCS.2.hepmc 4000
sbatch --account=${ACCOUNT} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_10x100_2M/DVCS.1.hepmc 4000
sbatch --account=${ACCOUNT} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_10x100_2M/DVCS.2.hepmc 4000
sbatch --account=${ACCOUNT} --parsable --array=1-250 --time=24:00:00 scripts/submit.sh hepmc3 EVGEN/DVCS/DVCS_5x41_1M/DVCS.1.hepmc   4000

