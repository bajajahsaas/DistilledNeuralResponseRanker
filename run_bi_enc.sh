#!/bin/bash
#
#SBATCH --job-name=bi_enc
#SBATCH --output=logs/run_bi_enc_%j.txt  # output file
#SBATCH -e logs/run_bi_enc_%j.err        # File to which STDERR will be written
#SBATCH --gres=gpu:1
#SBATCH --partition=titanx-long # Partition to submit to
#SBATCH --mem=50000
#
#SBATCH --ntasks=1


#Training a Bi-Encoder using cross entropy loss:
python ./main_bert_bi.py -- --dataset ubuntu_data --batch 16 --nmodel BiEncoderDot2 --epochs 1 
