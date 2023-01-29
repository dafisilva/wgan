#!/bin/bash
#
#SBATCH --partition=rtx2080ti_11GB     # Partition (check with "$sinfo")

#SBATCH --output=log/slurm.%N.%j.out               # Filename with STDOUT. You can use special flags, such as %N and %j.
#SBATCH --error=log/slurm.%N.%j.err                # (Optional) Filename with STDERR. If ommited, use STDOUT.
#SBATCH --job-name=wgan_train      # (Optional) Job name


python3 -u wgan.py

