#!/bin/bash

DIR=$(dirname $0)

pushd ${DIR}

### Hadron endcap
# pi+
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_100MeV_3to50deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_200MeV_3to50deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_500MeV_3to50deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_1GeV_3to50deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_2GeV_3to50deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_5GeV_3to50deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_10GeV_3to50deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_20GeV_3to50deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_50GeV_3to50deg.steer   500000

# kaon0L
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_100MeV_3to50deg.steer 500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_200MeV_3to50deg.steer 500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_500MeV_3to50deg.steer 500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_1GeV_3to50deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_2GeV_3to50deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_5GeV_3to50deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_10GeV_3to50deg.steer  250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_20GeV_3to50deg.steer  125000

### Barrel
# pi+
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_200MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_500MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_1GeV_45to135deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_2GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_5GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_10GeV_45to135deg.steer   125000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single EVGEN/SINGLE/pi+_20GeV_45to135deg.steer   100000

# e-
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_200MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_500MeV_45to135deg.steer  500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_1GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_2GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-5  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_5GeV_45to135deg.steer    200000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_10GeV_45to135deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-16 --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_20GeV_45to135deg.steer    62500

# gamma
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/gamma_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/gamma_200MeV_45to135deg.steer  500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/gamma_500MeV_45to135deg.steer  250000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/gamma_1GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/gamma_2GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-5  --time=24:00:00 submit.sh single EVGEN/SINGLE/gamma_5GeV_45to135deg.steer    200000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single EVGEN/SINGLE/gamma_10GeV_45to135deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-20 --time=24:00:00 submit.sh single EVGEN/SINGLE/gamma_20GeV_45to135deg.steer    50000

# pi0
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi0_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi0_200MeV_45to135deg.steer  500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi0_500MeV_45to135deg.steer  250000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi0_1GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi0_2GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-5  --time=24:00:00 submit.sh single EVGEN/SINGLE/pi0_5GeV_45to135deg.steer    200000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single EVGEN/SINGLE/pi0_10GeV_45to135deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-20 --time=24:00:00 submit.sh single EVGEN/SINGLE/pi0_20GeV_45to135deg.steer    50000
sbatch --account=rrg-wdconinc --parsable --array=1-40 --time=24:00:00 submit.sh single EVGEN/SINGLE/pi0_50GeV_45to135deg.steer    25000

# neutron
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/neutron_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/neutron_200MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/neutron_500MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/neutron_1GeV_45to135deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/neutron_2GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/neutron_5GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single EVGEN/SINGLE/neutron_10GeV_45to135deg.steer   125000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single EVGEN/SINGLE/neutron_20GeV_45to135deg.steer   100000

# kaon0L
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_100MeV_45to135deg.steer 500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_200MeV_45to135deg.steer 500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_500MeV_45to135deg.steer 500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_1GeV_45to135deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_2GeV_45to135deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_5GeV_45to135deg.steer   250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_10GeV_45to135deg.steer  125000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single EVGEN/SINGLE/kaon0L_20GeV_45to135deg.steer  100000

# mu-
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/mu-_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/mu-_200MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/mu-_500MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/mu-_1GeV_45to135deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/mu-_2GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/mu-_5GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single EVGEN/SINGLE/mu-_10GeV_45to135deg.steer   125000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single EVGEN/SINGLE/mu-_20GeV_45to135deg.steer   100000

### Electron endcap
# e-
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_100MeV_130to177deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_200MeV_130to177deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_500MeV_130to177deg.steer  500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_1GeV_130to177deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_2GeV_130to177deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_5GeV_130to177deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_10GeV_130to177deg.steer   125000
sbatch --account=rrg-wdconinc --parsable --array=1-16 --time=24:00:00 submit.sh single EVGEN/SINGLE/e-_20GeV_130to177deg.steer    62500

popd
