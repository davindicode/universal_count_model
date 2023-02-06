#!/bin/bash


# model selection
python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-3 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-eq-3 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-ec-3 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-2 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-4 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0


    
# modes_tot = [('GP', 'IP', 'hd_w_s_pos_t', 64, 'exp', 1, [], False, 10, False, 'ew'), 
#              ('GP', 'hNB', 'hd_w_s_pos_t', 64, 'exp', 1, [], False, 10, False, 'ew'), 
#              ('GP', 'U', 'hd', 8, 'identity', 3, [], False, 10, False, 'ew'),  # 3 
#              ('GP', 'U', 'hd_w_s_t', 48, 'identity', 3, [], False, 10, False, 'ew'), 
#              ('GP', 'U', 'hd_w_s_pos_t', 64, 'identity', 3, [], False, 10, False, 'ew'), # 5
#              ('GP', 'U', 'hd_w_s_pos_t_R1', 72, 'identity', 3, [6], False, 10, False, 'ew'), 
#              ('GP', 'U', 'hd_w_s_pos_t_R2', 80, 'identity', 3, [6], False, 10, False, 'ew'), 
#              ('GP', 'U', 'hd_w_s_pos_t_R3', 88, 'identity', 3, [6], False, 10, False, 'ew'), 
#              ('GP', 'U', 'hd_w_s_pos_t_R4', 96, 'identity', 3, [6], False, 10, False, 'ew'), 
#              ('GP', 'U', 'T1', 8, 'identity', 3, [0], False, 10, False, 'ew'), # 10
#              ('GP', 'IP', 'T1', 8, 'exp', 1, [0], False, 10, False, 'ew'), 
#              ('GP', 'hNB', 'T1', 8, 'exp', 1, [0], False, 10, False, 'ew')]



# regression with different likelihoods
# python3 HDC.py --cv -1 1 2 3 5 6 8 --gpu 0 --modes 0 1 4 --ncvx 2 --lr 1e-2 --binsize 40
python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood IP-exp --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood hNB-exp --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-3 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0


# regression with smaller subset of input covariates
#python3 HDC.py --cv -1 1 2 3 5 6 8 --gpu 0 --modes 2 3 --ncvx 2 --lr 1e-2 --binsize 40
python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-3 --mapping svgp-64 --x_mode hd --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-3 --mapping svgp-64 --x_mode hd-omega-speed-time --lr 1e-2 --jitter 1e-5 --gpu 0



# regression with different time bin sizes
#python3 HDC.py --cv -1 1 2 3 5 6 8 --gpu 0 --modes 4 --ncvx 2 --lr 1e-2 --binsize 20
#python3 HDC.py --cv -1 1 2 3 5 6 8 --gpu 0 --modes 4 --ncvx 2 --lr 1e-2 --binsize 100
#python3 HDC.py --cv -1 1 2 3 5 6 8 --gpu 0 --modes 4 --ncvx 2 --lr 1e-2 --binsize 200
#python3 HDC.py --cv -1 1 2 3 5 6 8 --gpu 0 --modes 4 --ncvx 2 --lr 1e-2 --binsize 500
python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 20 --likelihood U-el-3 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 100 --likelihood U-el-3 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 200 --likelihood U-el-3 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 500 --likelihood U-el-3 --mapping svgp-64 --x_mode hd-omega-speed-x-y-time --lr 1e-2 --jitter 1e-5 --gpu 0




# joint latent-observed models
# python3 HDC.py --cv -1 1 2 3 5 6 8 --gpu 0 --modes 5 6 7 8 --ncvx 3 --lr 1e-2 --lr_2 1e-3 --binsize 40
python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-3 --mapping svgp-72 --x_mode hd-omega-speed-x-y-time --z_mode R1 --lr 1e-2 --lr_2 1e-3 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-3 --mapping svgp-80 --x_mode hd-omega-speed-x-y-time --z_mode R2 --lr 1e-2 --lr_2 1e-3 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-3 --mapping svgp-88 --x_mode hd-omega-speed-x-y-time --z_mode R3 --lr 1e-2 --lr_2 1e-3 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-3 --mapping svgp-96 --x_mode hd-omega-speed-x-y-time --z_mode R4 --lr 1e-2 --lr_2 1e-3 --jitter 1e-5 --gpu 0




# latent variable models
#python3 HDC.py --cv -1 1 2 3 5 6 8 --gpu 0 --modes 9 10 11 --ncvx 3 --lr 3e-2 --lr_2 5e-3 --binsize 100
python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood U-el-3 --mapping svgp-8 --z_mode T1 --lr 1e-2 --lr_2 1e-3 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood IP-exp --mapping svgp-8 --z_mode T1 --lr 1e-2 --lr_2 1e-3 --jitter 1e-5 --gpu 0

python3 models.py --data_type th1 --checkpoint_dir ./checkpoint/ --data_path ../data/ --cv_folds 10 --cv -1 1 2 3 5 6 8 --seeds 123 1234 12345 --batch_size 10000 --max_epochs 3000 --bin_size 40 --likelihood hNB-exp --mapping svgp-8 --z_mode T1 --lr 1e-2 --lr_2 1e-3 --jitter 1e-5 --gpu 0




