#!/bin/bash
mem=100
n_iters=1
runs=15
#CIFAR-10

python er_main.py --method rand_replay --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_rand'  --use_conv 
python er_main.py --method mir_replay --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_MIR'  --use_conv    
python er_main.py --method entropy --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_least_entropy' --simple --use_conv
python er_main.py --method confidence --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_least_confidence' --no-simple --use_conv 
python er_main.py --method entropy --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_largest_entropy' --no-simple --use_conv
python er_main.py --method confidence --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_largest_confidence' --simple --use_conv
python er_main.py --method margin --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_least_margin' --no-simple --use_conv 
python er_main.py --method margin --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_largest_margin' --simple --use_conv 
python er_main.py --method bayesian --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_least_bayesian' --simple --use_conv 
python er_main.py --method bayesian --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_largest_bayesian' --no-simple --use_conv 
python er_main.py --method kmeans --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_kmeans' --use_conv 
python er_main.py --method coreset --lr 0.05 --samples_per_task -1 --dataset split_cifar10 --n_runs $runs --subsample 50  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_coreset' --use_conv 