#Swin-T
python -m torch.distributed.launch --nproc_per_node 8 --master_port 12345  main.py \
--cfg configs/swin_tiny_patch4_window7_224.yaml --data-path /imagenet/imagenet/ILSVRC/Data/CLS-LOC --batch-size 128


python -m torch.distributed.launch --nproc_per_node 8 --master_port 12345  main.py \
--cfg configs/swin_tiny_patch4_window7_224.yaml --pretrained /home/yaopeng/Code/model_checkpoint/swin2d/swin_tiny_patch4_window7_224.pth \
--data-path /imagenet/imagenet/ILSVRC/Data/CLS-LOC --batch-size 128 --tag hammer_tune