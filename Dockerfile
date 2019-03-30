FROM pytorch/pytorch:latest

RUN git clone https://github.com/NVIDIA/apex.git && cd apex && python setup.py install -v --no-cache-dir --cuda_ext --cpp_ext


RUN pip install pytorch-pretrained-bert

WORKDIR /workspace
