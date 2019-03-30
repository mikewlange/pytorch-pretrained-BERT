FROM pytorch/pytorch:nightly-devel-cuda10.0-cudnn7

RUN git clone https://github.com/NVIDIA/apex.git && cd apex && python setup.py install --cuda_ext --cpp_ext


RUN pip install pytorch-pretrained-bert

WORKDIR /workspace
