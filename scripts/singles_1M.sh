#!/bin/bash

DIR=$(dirname $0)

pushd ${DIR}

# Hadron endcap
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_100MeV_3to50deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_200MeV_3to50deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_500MeV_3to50deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_1GeV_3to50deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_2GeV_3to50deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_5GeV_3to50deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/pi+_10GeV_3to50deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/pi+_20GeV_3to50deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/pi+_50GeV_3to50deg.steer   250000

sbatch --account=rrg-wdconinc --parsable --array=1-10  --time=24:00:00 submit.sh single gps/kaon0L_100MeV_3to50deg.steer 100000
sbatch --account=rrg-wdconinc --parsable --array=1-10  --time=24:00:00 submit.sh single gps/kaon0L_200MeV_3to50deg.steer 100000
sbatch --account=rrg-wdconinc --parsable --array=1-10  --time=24:00:00 submit.sh single gps/kaon0L_500MeV_3to50deg.steer 100000
sbatch --account=rrg-wdconinc --parsable --array=1-10  --time=24:00:00 submit.sh single gps/kaon0L_1GeV_3to50deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-10  --time=24:00:00 submit.sh single gps/kaon0L_2GeV_3to50deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-20  --time=24:00:00 submit.sh single gps/kaon0L_5GeV_3to50deg.steer    50000
sbatch --account=rrg-wdconinc --parsable --array=1-40  --time=24:00:00 submit.sh single gps/kaon0L_10GeV_3to50deg.steer   25000
sbatch --account=rrg-wdconinc --parsable --array=1-40  --time=24:00:00 submit.sh single gps/kaon0L_20GeV_3to50deg.steer   25000

# Barrel
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_200MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_500MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi+_1GeV_45to135deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/pi+_2GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/pi+_5GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single gps/pi+_10GeV_45to135deg.steer   125000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single gps/pi+_20GeV_45to135deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-20 --time=24:00:00 submit.sh single gps/pi+_50GeV_45to135deg.steer    50000

sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/e-_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/e-_200MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/e-_500MeV_45to135deg.steer  500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/e-_1GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/e-_2GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-5  --time=24:00:00 submit.sh single gps/e-_5GeV_45to135deg.steer    200000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single gps/e-_10GeV_45to135deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-16 --time=24:00:00 submit.sh single gps/e-_20GeV_45to135deg.steer    62500
sbatch --account=rrg-wdconinc --parsable --array=1-50 --time=24:00:00 submit.sh single gps/e-_50GeV_45to135deg.steer    20000

sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/gamma_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/gamma_200MeV_45to135deg.steer  500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/gamma_500MeV_45to135deg.steer  250000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/gamma_1GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/gamma_2GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-5  --time=24:00:00 submit.sh single gps/gamma_5GeV_45to135deg.steer    200000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single gps/gamma_10GeV_45to135deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-20 --time=24:00:00 submit.sh single gps/gamma_20GeV_45to135deg.steer    50000
sbatch --account=rrg-wdconinc --parsable --array=1-40 --time=24:00:00 submit.sh single gps/gamma_50GeV_45to135deg.steer    25000

sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/pi0_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/pi0_200MeV_45to135deg.steer  500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/pi0_500MeV_45to135deg.steer  250000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/pi0_1GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/pi0_2GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-5  --time=24:00:00 submit.sh single gps/pi0_5GeV_45to135deg.steer    200000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single gps/pi0_10GeV_45to135deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-20 --time=24:00:00 submit.sh single gps/pi0_20GeV_45to135deg.steer    50000
sbatch --account=rrg-wdconinc --parsable --array=1-40 --time=24:00:00 submit.sh single gps/pi0_50GeV_45to135deg.steer    25000

sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/neutron_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/neutron_200MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/neutron_500MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/neutron_1GeV_45to135deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/neutron_2GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/neutron_5GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single gps/neutron_10GeV_45to135deg.steer   125000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single gps/neutron_20GeV_45to135deg.steer   100000

sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/kaon0L_100MeV_45to135deg.steer 500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/kaon0L_200MeV_45to135deg.steer 500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/kaon0L_500MeV_45to135deg.steer 500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/kaon0L_1GeV_45to135deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/kaon0L_2GeV_45to135deg.steer   500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/kaon0L_5GeV_45to135deg.steer   250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single gps/kaon0L_10GeV_45to135deg.steer  125000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single gps/kaon0L_20GeV_45to135deg.steer  100000

sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/mu-_100MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/mu-_200MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/mu-_500MeV_45to135deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/mu-_1GeV_45to135deg.steer   1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/mu-_2GeV_45to135deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/mu-_5GeV_45to135deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single gps/mu-_10GeV_45to135deg.steer   125000
sbatch --account=rrg-wdconinc --parsable --array=1-10 --time=24:00:00 submit.sh single gps/mu-_20GeV_45to135deg.steer   100000
sbatch --account=rrg-wdconinc --parsable --array=1-20 --time=24:00:00 submit.sh single gps/mu-_50GeV_45to135deg.steer    50000

# Electron endcap
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/e-_100MeV_130to177deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-1  --time=24:00:00 submit.sh single gps/e-_200MeV_130to177deg.steer 1000000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/e-_500MeV_130to177deg.steer  500000
sbatch --account=rrg-wdconinc --parsable --array=1-2  --time=24:00:00 submit.sh single gps/e-_1GeV_130to177deg.steer    500000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/e-_2GeV_130to177deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-4  --time=24:00:00 submit.sh single gps/e-_5GeV_130to177deg.steer    250000
sbatch --account=rrg-wdconinc --parsable --array=1-8  --time=24:00:00 submit.sh single gps/e-_10GeV_130to177deg.steer   125000
sbatch --account=rrg-wdconinc --parsable --array=1-16 --time=24:00:00 submit.sh single gps/e-_20GeV_130to177deg.steer    62500
sbatch --account=rrg-wdconinc --parsable --array=1-32 --time=24:00:00 submit.sh single gps/e-_50GeV_130to177deg.steer    32150

popd
