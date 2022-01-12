#config_name="swin_tiny_patch4_window7_224.yaml"
#resume="swin_tiny_patch4_window7_224.pth"
#resume="/home/yaopeng/Code/model_checkpoint/swin2d/swin_tiny_patch4_window7_224.pth"

config_name="swin_small_patch4_window7_224.yaml"
resume="swin_small_patch4_window7_224.pth"
#resume="/home/yaopeng/Code/model_checkpoint/swin2d/swin_small_patch4_window7_224.pth"

#config_name="swin_base_patch4_window7_224.yaml"
#resume="/home/yaopeng/Code/model_checkpoint/swin2d/swin_base_patch4_window7_224.pth"


data_path="/imagenet/imagenet/ILSVRC/Data/CLS-LOC"
python -m torch.distributed.launch --nproc_per_node 8 --master_port 12345 main.py --eval \
--cfg configs/${config_name} --resume ${resume}  --data-path ${data_path}