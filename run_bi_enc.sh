#!/bin/bash
#
#SBATCH --job-name=bi_enc
#SBATCH --gres=gpu:1
#SBATCH --output=logs/run_bi_enc_%j.txt  # output file
#SBATCH -e logs/run_bi_enc_%j.err        # File to which STDERR will be written
#SBATCH --partition=1080ti-long # Partition to submit to
#SBATCH --mem=50000
#SBATCH --ntasks=1

python3 ./main_bert_bi.py  --batch=16 --nmodel=BiEncoderDot2 --epochs 1

