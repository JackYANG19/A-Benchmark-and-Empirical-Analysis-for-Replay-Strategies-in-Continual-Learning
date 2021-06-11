#!/bin/bash
mem=100
n_iters=1
runs=20
#MNIST Split
python er_main.py --method rand_replay --lr 0.05 --samples_per_task 1000 --dataset split_mnist --n_runs $runs --disc_iters $n_iters --mem_size $mem --suffix 'ER_rand' --device 'cuda:0'
python er_main.py --method mir_replay --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_MIR' --device 'cuda:0'
python er_main.py --method entropy --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_least_entropy' --simple --device 'cuda:0'
python er_main.py --method entropy --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_largest_entropy' --no-simple --device 'cuda:0'
python er_main.py --method confidence --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_least_confidence' --no-simple --device 'cuda:0'
python er_main.py --method confidence --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_largest_confidence' --simple --device 'cuda:0'
python er_main.py --method margin --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_least_margin' --no-simple --device 'cuda:0'
python er_main.py --method margin --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_largest_margin' --simple --device 'cuda:0'
python er_main.py --method bayesian --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_least_bayesian' --simple --device 'cuda:0'
python er_main.py --method bayesian --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_largest_bayesian' --no-simple --device 'cuda:0'
python er_main.py --method kmeans --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_kmeans' --device 'cuda:0'
python er_main.py --method coreset --lr 0.05 --samples_per_task 1000 --dataset split_mnist  --subsample 50  --n_runs $runs --disc_iters $n_iters --mem_size $mem --compare_to_old_logits --suffix 'ER_coreset' --device 'cuda:0'

