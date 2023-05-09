# Running DNApipeTE on Hábrók HPC

This repo contains files and short documentation on how to run DNApipeTE via an Apptainer container in the University of Groningen's Hábrók HPC

## Installation

Firstly, DNApipeTE must be installed on Hábrók. This can be done in a few simple steps. The easiest way to do so is to login to the HPC and clone this repo as it already contains simple bash scripts for these tasks. This will create a folder in the `$HOME` directory called `dnapipete_hb/`. Follow these steps:

1. Login to Hábrok
2. Open the hidden file `.bashrc` found in the `$HOME` directory
3. After line 13 of the file, add a new line: `export APPTAINER_CACHEDIR=/scratch/$USER/apptainer`. Save and close the file, and log out of Hábrók. This way your `$SCRATCH` directory will be used as a temporary location to cache the Apptainer containers you install in the future (such as DNApipeTE). This is helpful because in case of too big containers, the storage limit of `$HOME` could be exceeded during installation.
4. Log in to Hábrók again and run the install script by running `sbatch dnapipete_hb/dnapipete_install.sh` on the console. Wait for the job to finish.
5. Inspect the log `inst_dnapipete_apptainer.log` in your `$HOME` directory. If all went well, DNApipeTE is now installed! You should also find a folder named `Project/` in your `$HOME` directory. This is where we will do the input and output into the DNApipeTE Apptainer container later on.

## Setup

dolor sit

## Running

amet, consectetur

## Example

adipiscing elit
