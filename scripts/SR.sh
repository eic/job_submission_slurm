#!/bin/bash

EMAIL=${2:-${USER}@jlab.org}

export JUGGLER_TAG=master
export CAMPAIGNS=/lustre19/expphy/volatile/eic/wdconinc/campaigns
export USEHEPMC3=false

SBATCH="sbatch --mail-user=${EMAIL} --parsable --array=1-50 --time=24:00:00"

${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25098.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25099.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25100.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25101.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25111.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25112.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25113.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25114.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25115.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25116.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25117.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25118.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25119.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25120.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25130.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25131.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25132.hepmc 10000
${SBATCH} scripts/submit.sh hepmc3 EVGEN/SR/SR.10GeV_5kVthreshold_hepmc/25133.hepmc 10000

