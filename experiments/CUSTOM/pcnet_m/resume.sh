#!/bin/bash
work_path=$(dirname $0)
# ITER=$1
PRETRAIN=$1
python -m torch.distributed.launch --nproc_per_node=1 main.py \
    --config $work_path/config.yaml --launcher pytorch \
    # --load-iter $ITER --resume
    --load-pretrain $PRETRAIN --resume
