FROM pytorch/pytorch:latest

RUN git clone https://github.com/NVIDIA/apex.git && cd apex && python setup.py install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" .


RUN pip install pytorch-pretrained-bert

WORKDIR /workspace
