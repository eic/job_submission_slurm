# slurm

Out-of-container supports for full simulation campaigns on slurm-based systems.

## Usage

The following command indicates how to submit 100 single particle jobs of 10000 events each to the JLab farm:
```
sbatch --array=1-100 ./scripts/submit.sh single EVGEN/SINGLE/e-_100MeV_3to50deg.steer 10000
```

