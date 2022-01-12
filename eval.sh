config_name="swin_tiny_patch4_window7_224.yaml"
#config_name="swin_small_patch4_window7_224.yaml"
#config_name="swin_base_patch4_window7_224.yaml"

data_path="/imagenet/imagenet/ILSVRC/Data/CLS-LOC"

resume=""


python -m torch.distributed.launch --nproc_per_node 8 --master_port 12345 main.py --eval \
--cfg configs/${config_name} --resume swin_base_patch4_window7_224.pth --data-path ${data_path}