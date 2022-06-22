ARG CUDA_11_6=nvidia/cuda:11.6.2-cudnn8-runtime-ubuntu20.04
ARG CUDA_11_3=nvidia/cuda:11.3.1-cudnn8-runtime-ubuntu20.04

FROM $CUDA_11_3

LABEL author="Dylan Paiton"

EXPOSE 8892

ENV DEBIAN_FRONTEND=noninteractive
ENV TORCH_CUDA_ARCH_LIST="8.6"

RUN apt update -y \
    && apt install -y sudo wget python3-pip git vim nodejs tmux nvidia-cuda-toolkit

COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install -r requirements.txt 
RUN python3 -m pip install torch torchvision torchaudio \
    --extra-index-url https://download.pytorch.org/whl/cu113

WORKDIR /root
COPY .jupyter .jupyter
RUN mkdir -p /root/.jupyter/nbextensions

WORKDIR /root/.jupyter/nbextensions
RUN git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding \
    && jupyter nbextension enable vim_binding/vim_binding

#WORKDIR /root/.jupyter
#RUN openssl req -x509 -nodes -days 365 \
#    -newkey rsa:2048 -subj "/C=US/ST=California/L=SFBay/O=Dylo" \
#    -keyout /root/.jupyter/mycert.pem -out /root/.jupyter/mycert.pem \
#    && chmod a+rw /root/.jupyter/mycert.pem

WORKDIR /
CMD ["jupyter-lab", "--no-browser", "--config=/root/.jupyter/jupyter_notebook_config.py"]

#RUN rm -rf /home/projects/dotfiles && git clone https://github.com/dpaiton/dotfiles.git /home/projects/dotfiles && chmod a+x /home/projects/dotfiles/setup_jupyter_vim.sh && . /home/projects/dotfiles/setup_jupyter_vim.sh

#CMD ["rm", "-rf", "/home/projects/dotfiles"]
#CMD ["git", "clone", "https://github.com/dpaiton/dotfiles.git", "/home/projects/dotfiles"]
#CMD ["chmod", "a+x", "/home/projects/dotfiles/setup_jupyter_vim.sh"]
#CMD ["/home/projects/dotfiles/setup_jupyter_vim.sh"]