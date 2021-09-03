#!/bin/bash

export JUGGLER_TAG=${1:-nightly}

echo "JUGGLER_TAG=${JUGGLER_TAG}"
echo "CAMPAIGNS=${CAMPAIGNS}"
echo "BENCHMARKS=${BENCHMARKS}"
echo "SBATCH_ACCOUNT=${SBATCH_ACCOUNT?Set SBATCH_ACCOUNT to the project account}"

SBATCH="sbatch --mail-user=${EMAIL:-${USER}@jlab.org} --parsable --requeue --time=36:00:00"

### Hadron endcap
for p in e- pi- pi0 pi+ kaon- kaon+ gamma proton neutron kaon0L mu- mu+ ; do
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_100MeV_3to50deg.steer  125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_200MeV_3to50deg.steer  125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_500MeV_3to50deg.steer  125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_1GeV_3to50deg.steer    125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_2GeV_3to50deg.steer    125000
  ${SBATCH} --array=1-16 scripts/submit.sh single EVGEN/SINGLE/${p}_5GeV_3to50deg.steer     62500
  ${SBATCH} --array=1-32 scripts/submit.sh single EVGEN/SINGLE/${p}_10GeV_3to50deg.steer    31250
  ${SBATCH} --array=1-64 scripts/submit.sh single EVGEN/SINGLE/${p}_20GeV_3to50deg.steer    15625
done

### Barrel
for p in e- pi- pi0 pi+ kaon- kaon+ gamma proton neutron kaon0L mu- mu+ ; do
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_100MeV_45to135deg.steer  125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_200MeV_45to135deg.steer  125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_500MeV_45to135deg.steer  125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_1GeV_45to135deg.steer    125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_2GeV_45to135deg.steer    125000
  ${SBATCH} --array=1-16 scripts/submit.sh single EVGEN/SINGLE/${p}_5GeV_45to135deg.steer    100000
  ${SBATCH} --array=1-32 scripts/submit.sh single EVGEN/SINGLE/${p}_10GeV_45to135deg.steer    62500
  ${SBATCH} --array=1-64 scripts/submit.sh single EVGEN/SINGLE/${p}_20GeV_45to135deg.steer    15625
done

### Electron endcap
for p in e- pi- pi0 pi+ kaon- kaon+ gamma proton ; do
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_100MeV_130to177deg.steer  125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_200MeV_130to177deg.steer  125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_500MeV_130to177deg.steer  125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_1GeV_130to177deg.steer    125000
  ${SBATCH} --array=1-8  scripts/submit.sh single EVGEN/SINGLE/${p}_2GeV_130to177deg.steer    125000
  ${SBATCH} --array=1-16 scripts/submit.sh single EVGEN/SINGLE/${p}_5GeV_130to177deg.steer     62500
  ${SBATCH} --array=1-32 scripts/submit.sh single EVGEN/SINGLE/${p}_10GeV_130to177deg.steer    31250
  ${SBATCH} --array=1-64 scripts/submit.sh single EVGEN/SINGLE/${p}_20GeV_130to177deg.steer    15625
done
