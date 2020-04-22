#!/bin/bash

#SBATCH -o "./hpc_output.log"   # Output-File -> somehow SLURM seems to be buffering stuff, not updating this file in "realtime"
#SBATCH -D .                    # Working Directory
#SBATCH -J hpc-tutorial     	# Job Name
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=40

#SBATCH --time=48:00:00 # expected runtime
#SBATCH --partition=standard

#Job-Status per Mail:
#SBATCH --mail-type=NONE
#SBATCH --mail-user=alsharif.mahmoud@tu-berlin.de

source activate hpc-tutorial
cd src
python main.py --train
