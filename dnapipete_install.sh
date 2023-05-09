#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=inst_dnapipete
#SBATCH --output=inst_dnapipete_apptainer.log
#SBATCH --mem=4GB
#SBATCH --partition=regular

mkdir $HOME/dnaPipeTE
cd $HOME/dnaPipeTE
apptainer pull --name dnapipete.img docker://clemgoub/dnapipete:latest
