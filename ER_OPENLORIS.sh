#!/bin/bash
mem=100
n_iters=1
runs=5
#miniimagenet
python er_main.py --method rand_replay --lr 0.1 --samples_per_task -1 --dataset openloris --n_runs $runs --disc_iters $n_iters --mem_size $mem --suffix 'ER_rand_hardfirst' --use_conv --hardfirst --device 'cuda:1'
python er_main.py --method rand_replay --lr 0.1 --samples_per_task -1 --dataset openloris --n_runs $runs --disc_iters $n_iters --mem_size $mem --suffix 'ER_rand_easyfirst' --use_conv --no-hardfirst --device 'cuda:1'
python er_main.py --method entropy --lr 0.1 --samples_per_task -1 --dataset openloris --n_runs $runs --subsample 25  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_least_entropy' --simple --use_conv --no-hardfirst --device 'cuda:2'
python er_main.py --method confidence --lr 0.1 --samples_per_task -1 --dataset openloris --n_runs $runs --subsample 25  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_largest_confidence' --simple --use_conv --no-hardfirst --device 'cuda:2'
python er_main.py --method margin --lr 0.1 --samples_per_task -1 --dataset openloris --n_runs $runs --subsample 25  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_least_margin' --simple --use_conv --no-hardfirst
python er_main.py --method bayesian --lr 0.1 --samples_per_task -1 --dataset openloris --n_runs $runs --subsample 25  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_least_bayesian' --simple --use_conv --no-hardfirst --device 'cuda:1'
python er_main.py --method mir_replay --lr 0.1 --samples_per_task -1 --dataset openloris --n_runs $runs --subsample 25  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_MIR' --use_conv --no-hardfirst --device 'cuda:2'
python er_main.py --method kmeans --lr 0.1 --samples_per_task -1 --dataset openloris --n_runs $runs --subsample 25  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_kmeans' --use_conv --no-hardfirst --device 'cuda:1'
python er_main.py --method coreset --lr 0.1 --samples_per_task -1 --dataset openloris --n_runs $runs --subsample 25  --disc_iters $n_iters --mem_size $mem  --suffix 'ER_coreset' --use_conv --no-hardfirst --device 'cuda:2'
