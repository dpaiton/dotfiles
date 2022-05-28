#FROM python:3.9.7-bullseye
#FROM nvidia/cuda:10.1-cudnn7-runtime-ubi8
#FROM nvidia/cuda:11.0.3-devel-ubuntu18.04
FROM nvidia/cuda:11.0.3-cudnn8-runtime-ubuntu18.04

#RUN groupadd -r user --gid 1234 && useradd -d /projects -ms /bin/bash -r -g user user --uid 1234

WORKDIR /projects

RUN apt update -y && apt install -y python3-pip git vim nodejs tmux sudo
COPY ./requirements.txt /projects
RUN python3 -m pip install --upgrade pip && python3 -m pip install -r requirements.txt 
RUN git clone https://github.com/dpaiton/dotfiles.git /projects/dotfiles
RUN chmod a+x /projects/dotfiles/setup_jupyter_vim.sh
RUN /projects/dotfiles/setup_jupyter_vim.sh

# don't use root when actually working in workdir
#RUN useradd -m -r -g sudo -ms /bin/bash -p user -u 1000 user && chown -R user:sudo /projects

#ENV NAME user
#ENV HOME /projects
#USER user

#CMD jupyter lab --ip=0.0.0.0 --port 8888 --notebook-dir=workdir
#CMD ["jupyter-lab","--ip=0.0.0.0", "--port 8888", "--no-browser","--allow-root"]
CMD ["jupyter-lab","--ip=0.0.0.0", "--no-browser","--allow-root"]
