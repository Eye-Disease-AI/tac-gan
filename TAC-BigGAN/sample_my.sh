# Parameters must be set in a way that matches one of finished trainings

export HDF5_USE_FILE_LOCKING='FALSE'

# ACGAN sample
CUDA_VISIBLE_DEVICES=0 python sample.py \
--loss_type AC --AC \
--AC_weight 1.0 \
--shuffle --batch_size 2 --parallel \
--num_G_accumulations 1 --num_D_accumulations 1 --num_epochs 2 \
--num_D_steps 2 --num_G_steps 1 --G_lr 2e-4 --D_lr 2e-4 \
--dataset NuclearCataract \
--G_ortho 0.0 \
--G_attn 0 --D_attn 0 \
--G_init N02 --D_init N02 \
--save_every 10 --num_best_copies 5 --num_save_copies 2 --seed 2018 \
--ema  --use_ema --ema_start 10000 \
--num_workers 0 \
--sample_classes 0 1 \
--sample_seeds 0 1 \
--sample_gen

# TACGAN sample -- first try
CUDA_VISIBLE_DEVICES=0 python sample.py \
--loss_type Twin_AC --AC \
--AC_weight 1.0 \
--shuffle --batch_size 2 --parallel \
--num_G_accumulations 1 --num_D_accumulations 1 --num_epochs 2 \
--num_D_steps 2 --num_G_steps 1 --G_lr 2e-4 --D_lr 2e-4 \
--dataset NuclearCataract \
--G_ortho 0.0 \
--G_attn 0 --D_attn 0 \
--G_init N02 --D_init N02 \
--save_every 10 --num_best_copies 5 --num_save_copies 2 --seed 2018 \
--ema  --use_ema --ema_start 10000 \
--num_workers 0 \
--sample_classes 0 1 \
--sample_seeds 0 1 \
--sample_gen

# TACGAN sample -- bigger AC weight and batch size
CUDA_VISIBLE_DEVICES=0 python sample.py \
--loss_type Twin_AC --AC \
--AC_weight 2.0 \
--shuffle --batch_size 16 --parallel \
--num_G_accumulations 1 --num_D_accumulations 1 --num_epochs 2 \
--num_D_steps 2 --num_G_steps 1 --G_lr 2e-4 --D_lr 2e-4 \
--dataset NuclearCataract \
--G_ortho 0.0 \
--G_attn 0 --D_attn 0 \
--G_init N02 --D_init N02 \
--save_every 10 --num_best_copies 5 --num_save_copies 2 --seed 2018 \
--ema  --use_ema --ema_start 10000 \
--num_workers 0 \
--sample_classes 0 1 \
--sample_seeds 0 1 \
--sample_gen
