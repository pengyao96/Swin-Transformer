#Swin-T
python -m torch.distributed.launch --nproc_per_node 8 --master_port 12345  main.py \
--cfg configs/swin_tiny_patch4_window7_224.yaml --data-path /imagenet/imagenet/ILSVRC/Data/CLS-LOC --batch-size 128