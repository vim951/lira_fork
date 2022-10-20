CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000000_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=0 --logdir exps_v2 &> logs/log_ref_0 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000001_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=1 --logdir exps_v2 &> logs/log_ref_1 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000002_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=2 --logdir exps_v2 &> logs/log_ref_2 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000003_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=3 --logdir exps_v2 &> logs/log_ref_3 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000004_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=4 --logdir exps_v2 &> logs/log_ref_4 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000005_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=5 --logdir exps_v2 &> logs/log_ref_5 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000006_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=6 --logdir exps_v2 &> logs/log_ref_6 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000007_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=7 --logdir exps_v2 &> logs/log_ref_7 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000008_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=8 --logdir exps_v2 &> logs/log_ref_8 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000009_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=9 --logdir exps_v2 &> logs/log_ref_9 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000010_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=10 --logdir exps_v2 &> logs/log_ref_10 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000011_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=11 --logdir exps_v2 &> logs/log_ref_11 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000012_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=12 --logdir exps_v2 &> logs/log_ref_12 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000013_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=13 --logdir exps_v2 &> logs/log_ref_13 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000014_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=14 --logdir exps_v2 &> logs/log_ref_14 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000015_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=15 --logdir exps_v2 &> logs/log_ref_15 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000016_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=16 --logdir exps_v2 &> logs/log_ref_16 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000017_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=17 --logdir exps_v2 &> logs/log_ref_17 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000018_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=18 --logdir exps_v2 &> logs/log_ref_18 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000019_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=19 --logdir exps_v2 &> logs/log_ref_19 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000020_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=20 --logdir exps_v2 &> logs/log_ref_20 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000021_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=21 --logdir exps_v2 &> logs/log_ref_21 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000022_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=22 --logdir exps_v2 &> logs/log_ref_22 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000023_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=23 --logdir exps_v2 &> logs/log_ref_23 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000024_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=24 --logdir exps_v2 &> logs/log_ref_24 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000025_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=25 --logdir exps_v2 &> logs/log_ref_25 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000026_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=26 --logdir exps_v2 &> logs/log_ref_26 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000027_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=27 --logdir exps_v2 &> logs/log_ref_27 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000028_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=28 --logdir exps_v2 &> logs/log_ref_28 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000029_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=29 --logdir exps_v2 &> logs/log_ref_29 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000030_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=30 --logdir exps_v2 &> logs/log_ref_30 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000031_0_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=31 --logdir exps_v2 &> logs/log_ref_31 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000032_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=32 --logdir exps_v2 &> logs/log_ref_32 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000033_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=33 --logdir exps_v2 &> logs/log_ref_33 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000034_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=34 --logdir exps_v2 &> logs/log_ref_34 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000035_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=35 --logdir exps_v2 &> logs/log_ref_35 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000036_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=36 --logdir exps_v2 &> logs/log_ref_36 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000037_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=37 --logdir exps_v2 &> logs/log_ref_37 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000038_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=38 --logdir exps_v2 &> logs/log_ref_38 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000039_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=39 --logdir exps_v2 &> logs/log_ref_39 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000040_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=40 --logdir exps_v2 &> logs/log_ref_40 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000041_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=41 --logdir exps_v2 &> logs/log_ref_41 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000042_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=42 --logdir exps_v2 &> logs/log_ref_42 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000043_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=43 --logdir exps_v2 &> logs/log_ref_43 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000044_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=44 --logdir exps_v2 &> logs/log_ref_44 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000045_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=45 --logdir exps_v2 &> logs/log_ref_45 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000046_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=46 --logdir exps_v2 &> logs/log_ref_46 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000047_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=47 --logdir exps_v2 &> logs/log_ref_47 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000048_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=48 --logdir exps_v2 &> logs/log_ref_48 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000049_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=49 --logdir exps_v2 &> logs/log_ref_49 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000050_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=50 --logdir exps_v2 &> logs/log_ref_50 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000051_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=51 --logdir exps_v2 &> logs/log_ref_51 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000052_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=52 --logdir exps_v2 &> logs/log_ref_52 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000053_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=53 --logdir exps_v2 &> logs/log_ref_53 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000054_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=54 --logdir exps_v2 &> logs/log_ref_54 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000055_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=55 --logdir exps_v2 &> logs/log_ref_55 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000056_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=56 --logdir exps_v2 &> logs/log_ref_56 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000057_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=57 --logdir exps_v2 &> logs/log_ref_57 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000058_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=58 --logdir exps_v2 &> logs/log_ref_58 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000059_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=59 --logdir exps_v2 &> logs/log_ref_59 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000060_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=60 --logdir exps_v2 &> logs/log_ref_60 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000061_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=61 --logdir exps_v2 &> logs/log_ref_61 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000062_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=62 --logdir exps_v2 &> logs/log_ref_62 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000063_1_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=63 --logdir exps_v2 &> logs/log_ref_63 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000064_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=64 --logdir exps_v2 &> logs/log_ref_64 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000065_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=65 --logdir exps_v2 &> logs/log_ref_65 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000066_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=66 --logdir exps_v2 &> logs/log_ref_66 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000067_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=67 --logdir exps_v2 &> logs/log_ref_67 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000068_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=68 --logdir exps_v2 &> logs/log_ref_68 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000069_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=69 --logdir exps_v2 &> logs/log_ref_69 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000070_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=70 --logdir exps_v2 &> logs/log_ref_70 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000071_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=71 --logdir exps_v2 &> logs/log_ref_71 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000072_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=72 --logdir exps_v2 &> logs/log_ref_72 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000073_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=73 --logdir exps_v2 &> logs/log_ref_73 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000074_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=74 --logdir exps_v2 &> logs/log_ref_74 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000075_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=75 --logdir exps_v2 &> logs/log_ref_75 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000076_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=76 --logdir exps_v2 &> logs/log_ref_76 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000077_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=77 --logdir exps_v2 &> logs/log_ref_77 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000078_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=78 --logdir exps_v2 &> logs/log_ref_78 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000079_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=79 --logdir exps_v2 &> logs/log_ref_79 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000080_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=80 --logdir exps_v2 &> logs/log_ref_80 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000081_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=81 --logdir exps_v2 &> logs/log_ref_81 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000082_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=82 --logdir exps_v2 &> logs/log_ref_82 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000083_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=83 --logdir exps_v2 &> logs/log_ref_83 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000084_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=84 --logdir exps_v2 &> logs/log_ref_84 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000085_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=85 --logdir exps_v2 &> logs/log_ref_85 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000086_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=86 --logdir exps_v2 &> logs/log_ref_86 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000087_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=87 --logdir exps_v2 &> logs/log_ref_87 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000088_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=88 --logdir exps_v2 &> logs/log_ref_88 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000089_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=89 --logdir exps_v2 &> logs/log_ref_89 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000090_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=90 --logdir exps_v2 &> logs/log_ref_90 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000091_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=91 --logdir exps_v2 &> logs/log_ref_91 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000092_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=92 --logdir exps_v2 &> logs/log_ref_92 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000093_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=93 --logdir exps_v2 &> logs/log_ref_93 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000094_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=94 --logdir exps_v2 &> logs/log_ref_94 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000095_2_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=95 --logdir exps_v2 &> logs/log_ref_95 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000096_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=96 --logdir exps_v2 &> logs/log_ref_96 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000097_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=97 --logdir exps_v2 &> logs/log_ref_97 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000098_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=98 --logdir exps_v2 &> logs/log_ref_98 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000099_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=99 --logdir exps_v2 &> logs/log_ref_99 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000100_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=100 --logdir exps_v2 &> logs/log_ref_100 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000101_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=101 --logdir exps_v2 &> logs/log_ref_101 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000102_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=102 --logdir exps_v2 &> logs/log_ref_102 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000103_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=103 --logdir exps_v2 &> logs/log_ref_103 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000104_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=104 --logdir exps_v2 &> logs/log_ref_104 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000105_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=105 --logdir exps_v2 &> logs/log_ref_105 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000106_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=106 --logdir exps_v2 &> logs/log_ref_106 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000107_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=107 --logdir exps_v2 &> logs/log_ref_107 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000108_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=108 --logdir exps_v2 &> logs/log_ref_108 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000109_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=109 --logdir exps_v2 &> logs/log_ref_109 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000110_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=110 --logdir exps_v2 &> logs/log_ref_110 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000111_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=111 --logdir exps_v2 &> logs/log_ref_111 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000112_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=112 --logdir exps_v2 &> logs/log_ref_112 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000113_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=113 --logdir exps_v2 &> logs/log_ref_113 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000114_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=114 --logdir exps_v2 &> logs/log_ref_114 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000115_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=115 --logdir exps_v2 &> logs/log_ref_115 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000116_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=116 --logdir exps_v2 &> logs/log_ref_116 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000117_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=117 --logdir exps_v2 &> logs/log_ref_117 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000118_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=118 --logdir exps_v2 &> logs/log_ref_118 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000119_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=119 --logdir exps_v2 &> logs/log_ref_119 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000120_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=120 --logdir exps_v2 &> logs/log_ref_120 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000121_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=121 --logdir exps_v2 &> logs/log_ref_121 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000122_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=122 --logdir exps_v2 &> logs/log_ref_122 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000123_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=123 --logdir exps_v2 &> logs/log_ref_123 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000124_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=124 --logdir exps_v2 &> logs/log_ref_124 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000125_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=125 --logdir exps_v2 &> logs/log_ref_125 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000126_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=126 --logdir exps_v2 &> logs/log_ref_126 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000127_3_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=127 --logdir exps_v2 &> logs/log_ref_127 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000128_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=128 --logdir exps_v2 &> logs/log_ref_128 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000129_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=129 --logdir exps_v2 &> logs/log_ref_129 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000130_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=130 --logdir exps_v2 &> logs/log_ref_130 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000131_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=131 --logdir exps_v2 &> logs/log_ref_131 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000132_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=132 --logdir exps_v2 &> logs/log_ref_132 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000133_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=133 --logdir exps_v2 &> logs/log_ref_133 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000134_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=134 --logdir exps_v2 &> logs/log_ref_134 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000135_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=135 --logdir exps_v2 &> logs/log_ref_135 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000136_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=136 --logdir exps_v2 &> logs/log_ref_136 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000137_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=137 --logdir exps_v2 &> logs/log_ref_137 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000138_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=138 --logdir exps_v2 &> logs/log_ref_138 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000139_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=139 --logdir exps_v2 &> logs/log_ref_139 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000140_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=140 --logdir exps_v2 &> logs/log_ref_140 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000141_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=141 --logdir exps_v2 &> logs/log_ref_141 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000142_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=142 --logdir exps_v2 &> logs/log_ref_142 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000143_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=143 --logdir exps_v2 &> logs/log_ref_143 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000144_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=144 --logdir exps_v2 &> logs/log_ref_144 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000145_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=145 --logdir exps_v2 &> logs/log_ref_145 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000146_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=146 --logdir exps_v2 &> logs/log_ref_146 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000147_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=147 --logdir exps_v2 &> logs/log_ref_147 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000148_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=148 --logdir exps_v2 &> logs/log_ref_148 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000149_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=149 --logdir exps_v2 &> logs/log_ref_149 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000150_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=150 --logdir exps_v2 &> logs/log_ref_150 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000151_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=151 --logdir exps_v2 &> logs/log_ref_151 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000152_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=152 --logdir exps_v2 &> logs/log_ref_152 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000153_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=153 --logdir exps_v2 &> logs/log_ref_153 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000154_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=154 --logdir exps_v2 &> logs/log_ref_154 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000155_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=155 --logdir exps_v2 &> logs/log_ref_155 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000156_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=156 --logdir exps_v2 &> logs/log_ref_156 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000157_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=157 --logdir exps_v2 &> logs/log_ref_157 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000158_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=158 --logdir exps_v2 &> logs/log_ref_158 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000159_4_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=159 --logdir exps_v2 &> logs/log_ref_159 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000160_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=160 --logdir exps_v2 &> logs/log_ref_160 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000161_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=161 --logdir exps_v2 &> logs/log_ref_161 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000162_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=162 --logdir exps_v2 &> logs/log_ref_162 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000163_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=163 --logdir exps_v2 &> logs/log_ref_163 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000164_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=164 --logdir exps_v2 &> logs/log_ref_164 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000165_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=165 --logdir exps_v2 &> logs/log_ref_165 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000166_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=166 --logdir exps_v2 &> logs/log_ref_166 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000167_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=167 --logdir exps_v2 &> logs/log_ref_167 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000168_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=168 --logdir exps_v2 &> logs/log_ref_168 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000169_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=169 --logdir exps_v2 &> logs/log_ref_169 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000170_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=170 --logdir exps_v2 &> logs/log_ref_170 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000171_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=171 --logdir exps_v2 &> logs/log_ref_171 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000172_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=172 --logdir exps_v2 &> logs/log_ref_172 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000173_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=173 --logdir exps_v2 &> logs/log_ref_173 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000174_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=174 --logdir exps_v2 &> logs/log_ref_174 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000175_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=175 --logdir exps_v2 &> logs/log_ref_175 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000176_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=176 --logdir exps_v2 &> logs/log_ref_176 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000177_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=177 --logdir exps_v2 &> logs/log_ref_177 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000178_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=178 --logdir exps_v2 &> logs/log_ref_178 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000179_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=179 --logdir exps_v2 &> logs/log_ref_179 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000180_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=180 --logdir exps_v2 &> logs/log_ref_180 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000181_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=181 --logdir exps_v2 &> logs/log_ref_181 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000182_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=182 --logdir exps_v2 &> logs/log_ref_182 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000183_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=183 --logdir exps_v2 &> logs/log_ref_183 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000184_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=184 --logdir exps_v2 &> logs/log_ref_184 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000185_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=185 --logdir exps_v2 &> logs/log_ref_185 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000186_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=186 --logdir exps_v2 &> logs/log_ref_186 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000187_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=187 --logdir exps_v2 &> logs/log_ref_187 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000188_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=188 --logdir exps_v2 &> logs/log_ref_188 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000189_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=189 --logdir exps_v2 &> logs/log_ref_189 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000190_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=190 --logdir exps_v2 &> logs/log_ref_190 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000191_5_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=191 --logdir exps_v2 &> logs/log_ref_191 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000192_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=192 --logdir exps_v2 &> logs/log_ref_192 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000193_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=193 --logdir exps_v2 &> logs/log_ref_193 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000194_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=194 --logdir exps_v2 &> logs/log_ref_194 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000195_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=195 --logdir exps_v2 &> logs/log_ref_195 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000196_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=196 --logdir exps_v2 &> logs/log_ref_196 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000197_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=197 --logdir exps_v2 &> logs/log_ref_197 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000198_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=198 --logdir exps_v2 &> logs/log_ref_198 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000199_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=199 --logdir exps_v2 &> logs/log_ref_199 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000200_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=200 --logdir exps_v2 &> logs/log_ref_200 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000201_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=201 --logdir exps_v2 &> logs/log_ref_201 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000202_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=202 --logdir exps_v2 &> logs/log_ref_202 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000203_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=203 --logdir exps_v2 &> logs/log_ref_203 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000204_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=204 --logdir exps_v2 &> logs/log_ref_204 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000205_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=205 --logdir exps_v2 &> logs/log_ref_205 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000206_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=206 --logdir exps_v2 &> logs/log_ref_206 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000207_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=207 --logdir exps_v2 &> logs/log_ref_207 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000208_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=208 --logdir exps_v2 &> logs/log_ref_208 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000209_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=209 --logdir exps_v2 &> logs/log_ref_209 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000210_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=210 --logdir exps_v2 &> logs/log_ref_210 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000211_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=211 --logdir exps_v2 &> logs/log_ref_211 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000212_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=212 --logdir exps_v2 &> logs/log_ref_212 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000213_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=213 --logdir exps_v2 &> logs/log_ref_213 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000214_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=214 --logdir exps_v2 &> logs/log_ref_214 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000215_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=215 --logdir exps_v2 &> logs/log_ref_215 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000216_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=216 --logdir exps_v2 &> logs/log_ref_216 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000217_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=217 --logdir exps_v2 &> logs/log_ref_217 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000218_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=218 --logdir exps_v2 &> logs/log_ref_218 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000219_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=219 --logdir exps_v2 &> logs/log_ref_219 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000220_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=220 --logdir exps_v2 &> logs/log_ref_220 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000221_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=221 --logdir exps_v2 &> logs/log_ref_221 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000222_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=222 --logdir exps_v2 &> logs/log_ref_222 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000223_6_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=223 --logdir exps_v2 &> logs/log_ref_223 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000224_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=224 --logdir exps_v2 &> logs/log_ref_224 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000225_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=225 --logdir exps_v2 &> logs/log_ref_225 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000226_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=226 --logdir exps_v2 &> logs/log_ref_226 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000227_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=227 --logdir exps_v2 &> logs/log_ref_227 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000228_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=228 --logdir exps_v2 &> logs/log_ref_228 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000229_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=229 --logdir exps_v2 &> logs/log_ref_229 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000230_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=230 --logdir exps_v2 &> logs/log_ref_230 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000231_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=231 --logdir exps_v2 &> logs/log_ref_231 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000232_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=232 --logdir exps_v2 &> logs/log_ref_232 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000233_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=233 --logdir exps_v2 &> logs/log_ref_233 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000234_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=234 --logdir exps_v2 &> logs/log_ref_234 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000235_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=235 --logdir exps_v2 &> logs/log_ref_235 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000236_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=236 --logdir exps_v2 &> logs/log_ref_236 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000237_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=237 --logdir exps_v2 &> logs/log_ref_237 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000238_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=238 --logdir exps_v2 &> logs/log_ref_238 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000239_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=239 --logdir exps_v2 &> logs/log_ref_239 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000240_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=240 --logdir exps_v2 &> logs/log_ref_240 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000241_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=241 --logdir exps_v2 &> logs/log_ref_241 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000242_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=242 --logdir exps_v2 &> logs/log_ref_242 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000243_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=243 --logdir exps_v2 &> logs/log_ref_243 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000244_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=244 --logdir exps_v2 &> logs/log_ref_244 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000245_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=245 --logdir exps_v2 &> logs/log_ref_245 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000246_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=246 --logdir exps_v2 &> logs/log_ref_246 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000247_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=247 --logdir exps_v2 &> logs/log_ref_247 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000248_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=248 --logdir exps_v2 &> logs/log_ref_248 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000249_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=249 --logdir exps_v2 &> logs/log_ref_249 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000250_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=250 --logdir exps_v2 &> logs/log_ref_250 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000251_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=251 --logdir exps_v2 &> logs/log_ref_251 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000252_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=252 --logdir exps_v2 &> logs/log_ref_252 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000253_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=253 --logdir exps_v2 &> logs/log_ref_253 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000254_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=254 --logdir exps_v2 &> logs/log_ref_254 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000255_7_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=255 --logdir exps_v2 &> logs/log_ref_255 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000256_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=256 --logdir exps_v2 &> logs/log_ref_256 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000257_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=257 --logdir exps_v2 &> logs/log_ref_257 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000258_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=258 --logdir exps_v2 &> logs/log_ref_258 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000259_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=259 --logdir exps_v2 &> logs/log_ref_259 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000260_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=260 --logdir exps_v2 &> logs/log_ref_260 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000261_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=261 --logdir exps_v2 &> logs/log_ref_261 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000262_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=262 --logdir exps_v2 &> logs/log_ref_262 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000263_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=263 --logdir exps_v2 &> logs/log_ref_263 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000264_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=264 --logdir exps_v2 &> logs/log_ref_264 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000265_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=265 --logdir exps_v2 &> logs/log_ref_265 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000266_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=266 --logdir exps_v2 &> logs/log_ref_266 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000267_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=267 --logdir exps_v2 &> logs/log_ref_267 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000268_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=268 --logdir exps_v2 &> logs/log_ref_268 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000269_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=269 --logdir exps_v2 &> logs/log_ref_269 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000270_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=270 --logdir exps_v2 &> logs/log_ref_270 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000271_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=271 --logdir exps_v2 &> logs/log_ref_271 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000272_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=272 --logdir exps_v2 &> logs/log_ref_272 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000273_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=273 --logdir exps_v2 &> logs/log_ref_273 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000274_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=274 --logdir exps_v2 &> logs/log_ref_274 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000275_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=275 --logdir exps_v2 &> logs/log_ref_275 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000276_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=276 --logdir exps_v2 &> logs/log_ref_276 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000277_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=277 --logdir exps_v2 &> logs/log_ref_277 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000278_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=278 --logdir exps_v2 &> logs/log_ref_278 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000279_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=279 --logdir exps_v2 &> logs/log_ref_279 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000280_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=280 --logdir exps_v2 &> logs/log_ref_280 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000281_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=281 --logdir exps_v2 &> logs/log_ref_281 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000282_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=282 --logdir exps_v2 &> logs/log_ref_282 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000283_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=283 --logdir exps_v2 &> logs/log_ref_283 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000284_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=284 --logdir exps_v2 &> logs/log_ref_284 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000285_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=285 --logdir exps_v2 &> logs/log_ref_285 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000286_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=286 --logdir exps_v2 &> logs/log_ref_286 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000287_8_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=287 --logdir exps_v2 &> logs/log_ref_287 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000288_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=288 --logdir exps_v2 &> logs/log_ref_288 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000289_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=289 --logdir exps_v2 &> logs/log_ref_289 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000290_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=290 --logdir exps_v2 &> logs/log_ref_290 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000291_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=291 --logdir exps_v2 &> logs/log_ref_291 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000292_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=292 --logdir exps_v2 &> logs/log_ref_292 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000293_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=293 --logdir exps_v2 &> logs/log_ref_293 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000294_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=294 --logdir exps_v2 &> logs/log_ref_294 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000295_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=295 --logdir exps_v2 &> logs/log_ref_295 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000296_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=296 --logdir exps_v2 &> logs/log_ref_296 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000297_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=297 --logdir exps_v2 &> logs/log_ref_297 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000298_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=298 --logdir exps_v2 &> logs/log_ref_298 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000299_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=299 --logdir exps_v2 &> logs/log_ref_299 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000300_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=300 --logdir exps_v2 &> logs/log_ref_300 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000301_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=301 --logdir exps_v2 &> logs/log_ref_301 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000302_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=302 --logdir exps_v2 &> logs/log_ref_302 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000303_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=303 --logdir exps_v2 &> logs/log_ref_303 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000304_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=304 --logdir exps_v2 &> logs/log_ref_304 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000305_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=305 --logdir exps_v2 &> logs/log_ref_305 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000306_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=306 --logdir exps_v2 &> logs/log_ref_306 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000307_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=307 --logdir exps_v2 &> logs/log_ref_307 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000308_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=308 --logdir exps_v2 &> logs/log_ref_308 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000309_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=309 --logdir exps_v2 &> logs/log_ref_309 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000310_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=310 --logdir exps_v2 &> logs/log_ref_310 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000311_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=311 --logdir exps_v2 &> logs/log_ref_311 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000312_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=312 --logdir exps_v2 &> logs/log_ref_312 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000313_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=313 --logdir exps_v2 &> logs/log_ref_313 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000314_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=314 --logdir exps_v2 &> logs/log_ref_314 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000315_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=315 --logdir exps_v2 &> logs/log_ref_315 &
wait;
CUDA_VISIBLE_DEVICES='0' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000316_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=316 --logdir exps_v2 &> logs/log_ref_316 &
CUDA_VISIBLE_DEVICES='1' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000317_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=317 --logdir exps_v2 &> logs/log_ref_317 &
CUDA_VISIBLE_DEVICES='2' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000318_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=318 --logdir exps_v2 &> logs/log_ref_318 &
CUDA_VISIBLE_DEVICES='3' python -u train_ref_without_x.py --scr_neighs=/home/victor/lf2/npy/scr_neighs_ref_2000319_9_32.npy --dataset=cifar10 --epochs=100 --save_steps=20 --arch wrn28-2 --seed=319 --logdir exps_v2 &> logs/log_ref_319 &
wait;
