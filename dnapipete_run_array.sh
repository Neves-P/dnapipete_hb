#!/bin/bash
#SBATCH --time=0:05:00
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --array=1-5
#SBATCH --job-name=dnapipete
#SBATCH --output=dnapipete_run-%a.log
#SBATCH --mem=8GB
#SBATCH --partition=regular

export APPTAINER_CACHEDIR=/scratch/$USER/apptainer


apptainer exec --bind $HOME/Project:/mnt $HOME/dnaPipeTE/dnapipete.img  chmod +x /mnt/dnaPipeTE_cmd.sh

apptainer exec --bind $HOME/Project:/mnt $HOME/dnaPipeTE/dnapipete.img /mnt/dnaPipeTE_cmd.sh ${SLURM_ARRAY_TASK_ID}
