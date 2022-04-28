# ECE3162

## Characterization of Low Batch CNN Inference on GPUs

In this project, I test the low batch inference GPU and memory utilization of pre-trined CNN model in Pytorch. I use DLprof (https://docs.nvidia.com/deeplearning/frameworks/dlprof-user-guide/) to profile the GPU utilization and use NVIDIA-smi tool to profile GPU memory utilization.

### Requirements :
```sh
* Python 3.7
* nvidia-pyindex
* nvidia-dlprof
* nvidia-dlprof[pytorch]
* NVIDIA drivers (If using GPU) 
```
### Datasets :
ImageNet Dataset: https://image-net.org/download <br>
Download and unzip it in ./val
