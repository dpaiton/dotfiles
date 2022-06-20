#FROM nvidia/cuda:11.6.2-cudnn8-runtime-ubuntu20.04
FROM nvidia/cuda:11.3.1-cudnn8-runtime-ubuntu20.04

WORKDIR /projects
ENV DEBIAN_FRONTEND=noninteractive
ENV TORCH_CUDA_ARCH_LIST="8.6"

RUN apt update -y && apt install -y sudo python3-pip git vim nodejs tmux nvidia-cuda-toolkit
COPY ./requirements.txt /projects
RUN python3 -m pip install --upgrade pip && python3 -m pip install -r requirements.txt 
RUN git clone https://github.com/dpaiton/dotfiles.git /projects/dotfiles
RUN chmod a+x /projects/dotfiles/setup_jupyter_vim.sh
RUN /projects/dotfiles/setup_jupyter_vim.sh

RUN python3 -m pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113

CMD ["jupyter-lab"]
