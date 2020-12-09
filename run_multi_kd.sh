#!/bin/bash
#
#SBATCH --job-name=kd_bi_enc
#SBATCH --output=logs/run_bi_enc_kd_%j.txt  # output file
#SBATCH -e logs/run_bi_enc_kd_%j.err        # File to which STDERR will be written
#SBATCH --gres=gpu:1
#SBATCH --partition=1080ti-long # Partition to submit to
#SBATCH --mem=50000
#
#SBATCH --ntasks=1


# Training a Bi-Encoder using cross-entropy loss and knowledge distillation:
python ./multi_bi_kd.py -- --batch 8 --student_batch 16 --alpha 0.5  --epochs 1
