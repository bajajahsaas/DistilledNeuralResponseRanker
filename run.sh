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

#Training a Bi-Encoder using cross entropy loss:

python ./main_bert_bi.py -- --dataset ubuntu_data --batch 16 --nmodel BiEncoderDot2 --epochs 1 
#Training an enchanced Cross-Encoder (BECA) using cross entropy loss:

# python ./main_bert_bi.py -- --dataset ubuntu_data --batch 8 --nmodel MolyEncoderAggP2 --epochs 1
#Training a Bi-Encoder using cross-entropy loss and knowledge distillation:

# python ./main_bi_kd.py -- --dataset ubuntu_data --batch 8 --student_batch 16 --alpha 0.5  --epochs 1