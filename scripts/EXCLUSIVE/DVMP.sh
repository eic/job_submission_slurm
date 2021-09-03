#!/bin/bash

ACCOUNT=${1:-eic}
EMAIL=${2:-${USER}@jlab.org}

export JUGGLER_TAG=nightly
export CAMPAIGNS=$(realpath ~/EIC/campaigns)
#export RECONSTRUCTION=$(realpath ~/EIC/benchmarks/reconstruction_benchmarks)
export USEHEPMC3=true

SBATCH="sbatch --account=${ACCOUNT} --mail-user=${EMAIL} --parsable"

${SBATCH} --array=1-100 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/DVMP/lAger/lager-vmp-25mrad.upsilon-10on100.4pi.disp-ups-87-electron.run00001-lumi1000.hepmc 1000
${SBATCH} --array=1-100 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/DVMP/lAger/lager-vmp-25mrad.upsilon-18on275.4pi.disp-ups-87-electron.run00001-lumi1000.hepmc 1000
${SBATCH} --array=1-100 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/DVMP/lAger/lager-vmp-25mrad.upsilon-10on100.4pi.disp-ups-87-muon.run00001-lumi1000.hepmc 1000
${SBATCH} --array=1-100 scripts/submit.sh hepmc3 EVGEN/EXCLUSIVE/DVMP/lAger/lager-vmp-25mrad.upsilon-18on275.4pi.disp-ups-87-muon.run00001-lumi1000.hepmc 1000

