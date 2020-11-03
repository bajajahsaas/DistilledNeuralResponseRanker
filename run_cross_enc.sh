#!/bin/bash
#
#SBATCH --job-name=cross_enc
#SBATCH --gres=gpu:1
#SBATCH --partition=2080ti-long # Partition to submit to
#SBATCH --mem=50000
#SBATCH --ntasks=1

python3 ./main_bert_bi_copy.py --dataset=mantis --batch=8 --nmodel=MolyEncoderAggP2 --epochs 1
