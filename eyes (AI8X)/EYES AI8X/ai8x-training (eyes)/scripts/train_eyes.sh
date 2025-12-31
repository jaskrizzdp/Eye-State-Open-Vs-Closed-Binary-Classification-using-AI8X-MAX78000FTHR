#!/bin/sh
python train.py --epochs 5 --optimizer Adam --lr 0.001 --wd 0 --deterministic --compress policies/schedule-CarBicycle.yaml --qat-policy policies/qat_policy_cd.yaml --model ai85cdnet --dataset eyes --confusion --param-hist --embedding --device MAX78000 --enable-tensorboard"$@"
