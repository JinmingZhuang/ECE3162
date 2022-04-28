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

1.Download validation dataset and unzip it in ./val.<br>
2.Prepare the validation dataset.<br>
```sh
cd ./val
./valprep.sh
```

### Workflow :
1. Create Project and input the pre-trained CNN model provided by Pytorch (https://pytorch.org/vision/stable/models.html), for exampmle, resnet152. By runing the following script, a directory with the same name of input "densenet201" has been created. Under this directory, 5 projects with different inference batch number have also been created.
```sh
chmod +x pro_set.sh
chmod +x gpu_utilization.sh
chmod +x run_mem.sh
./pro_set.sh
```

2. Run CNN inference and Profile GPU and Memory Utilization.<br>
Here, we use batch=5 as an example to illustrate the process.<br>
```sh
cd resnet152/resnet152_5_batch
dlprof --mode=simple --reports=kernel,iteration,summary python imagenet_test.py
./run_mem.sh
```

3. GPU utilization collect<br>
```sh
cd densenet201/
./gpu_utilization.sh
```

### Expected Result
Here I demonstrate the result of doing one batch inference of densenet201 after 1 epoach in the following picture.<br>

The result of GPU utilization is <br>
![image](https://user-images.githubusercontent.com/77606152/165711041-3a5c9ff3-0bd9-4a46-8d42-578abd3f152c.png)<br>

The result of Memory utilization is <br>
![GPU_low_batch_inference](https://user-images.githubusercontent.com/77606152/165711364-391dc69a-db8c-4b46-8caa-c0bb07f2ff3f.png)<br>
