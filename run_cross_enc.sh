#!/bin/bash
#
#SBATCH --job-name=cross_enc
#SBATCH --output=logs/run_cross_enc_%j.txt  # output file
#SBATCH -e logs/run_cross_enc_%j.err        # File to which STDERR will be written
#SBATCH --gres=gpu:1
#SBATCH --partition=1080ti-long # Partition to submit to
#SBATCH --mem=50000
#
#SBATCH --ntasks=1


#Training an enchanced Cross-Encoder (BECA) using cross entropy loss:
python ./main_bert_bi.py -- --dataset ubuntu_data --batch 8 --nmodel MolyEncoderAggP2 --epochs 1
