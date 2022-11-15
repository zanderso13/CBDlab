#!/usr/bin/bash
#
#SBATCH -A p30954
#SBATCH -p normal
#SBATCH -t 24:00:00
#SBATCH --mem=64G
#SBATCH -J bidskit

cd /projects/b1108/data/Georgia/transitions/derivatives

bidskit
