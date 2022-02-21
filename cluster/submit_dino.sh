#!/bin/bash
#SBATCH -p mlhiwidlc_gpu-rtx2080
#SBATCH -q dlc-wagnerd
#SBATCH --gres=gpu:8
#SBATCH -J MSSL_IN
#SBATCH -t 23:59:59

pip list

source activate dino

python -m torch.distributed.launch --nproc_per_node=8 main_dino.py --arch vit_small --data_path /data/datasets/ImageNet/imagenet-pytorch/train --output_dir /work/dlclarge2/wagnerd-metassl-experiments/dino/$EXPERIMENT_NAME --batch_size_per_gpu 40 --saveckp_freq 10
