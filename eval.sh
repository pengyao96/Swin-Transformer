config_name='swin_tiny_patch4_window7_224.yaml'
#data-path='/imagenet/imagenet/ILSVRC/Data/CLS-LOC'


python -m torch.distributed.launch --nproc_per_node 1 --master_port 12345 main.py --eval \
--cfg configs/${config_name} --resume swin_base_patch4_window7_224.pth --data-path /imagenet/imagenet/ILSVRC/Data/CLS-LOC