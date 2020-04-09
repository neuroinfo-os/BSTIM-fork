#!/bin/bash -x
#SBATCH --job-name=RKI_IA
#SBATCH --account=covid19dynstat
#SBATCH --partition=batch
#SBATCH --array=1-8:4
#SBATCH --ntasks-per-node=4
#SBATCH --nodes=1
#SBATCH --output=/p/project/covid19dynstat/goebbert1/runs/%A_o.txt
#SBATCH --error=/p/project/covid19dynstat/goebbert1/runs/%A_e.txt
#SBATCH --time=00:30:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=<email>

# run tasks
cd ${PROJECT}/goebbert1/BSTIM/src
srun --exclusive -n ${SLURM_NTASKS} gridjob_sample_ia.slurm.sh
