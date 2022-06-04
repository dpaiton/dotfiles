FROM nvidia/cuda:11.6.2-cudnn8-runtime-ubuntu20.04

WORKDIR /projects
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt install -y python3-pip git vim nodejs tmux sudo
COPY ./requirements.txt /projects
RUN python3 -m pip install --upgrade pip && python3 -m pip install -r requirements.txt 
RUN git clone https://github.com/dpaiton/dotfiles.git /projects/dotfiles
RUN chmod a+x /projects/dotfiles/setup_jupyter_vim.sh
RUN /projects/dotfiles/setup_jupyter_vim.sh

CMD ["jupyter-lab","--ip=0.0.0.0", "--no-browser","--allow-root"]
