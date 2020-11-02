#!/bin/bash
#
#SBATCH --job-name=bi_enc
#SBATCH --gres=gpu:1
#SBATCH --partition=titanx-long # Partition to submit to
#SBATCH --mem=50000
#SBATCH --ntasks=1
#SBATCH --time=02-01:00:00

python3 ./main_bert_bi.py -- --dataset mantis --batch 16 --nmodel BiEncoderDot2 --epochs 1 
