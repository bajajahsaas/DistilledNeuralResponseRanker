#!/bin/bash
#
#SBATCH --job-name=process-data
#SBATCH --output=logs/run_%j.txt  # output file
#SBATCH -e logs/run_%j.err        # File to which STDERR will be written
#SBATCH --gres=gpu:1
#SBATCH --partition=m40-short # Partition to submit to
#SBATCH --mem=50000
#
#SBATCH --ntasks=1

mkdir logs
cd..
wget https://www.dropbox.com/s/2fdn26rj6h9bpvl/ubuntu_data.zip?dl=0&file_subpath=%2Fubuntu_data
# Run in CMD Line:- unzip ubuntu_data.zip?dl=0 to have all *txt in this directory
python -u ubuntu_preprocess.py

