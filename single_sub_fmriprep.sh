#!/usr/bin/bash

#SBATCH -A p30954
#SBATCH -p normal
#SBATCH -t 24:00:00
#SBATCH --mem=64G
#SBATCH -J fmriprep_single_sub

module purge
module load singularity/latest
echo "modules loaded" 
cd /projects/b1108
pwd
echo "beginning preprocessing"

singularity run --cleanenv -B /projects:/projects /projects/b1108/software/singularity_images/fmriprep-22.0.2.sif /projects/p30954/CBDlab/bids /projects/p30954/CBDlab/fmriprep participant --participant-label ${1} --use-syn-sdc --fs-license-file /projects/b1108/software/freesurfer_license/license.txt --fs-no-reconall -w /projects/p30954/CBDlab/work
