##Setup Ubuntu Docker with Nvidia GPU support for locally hosting Jupyter Notebook files

###Ubuntu 22.04
Read the linked instructions carefully! Each step should have a verification command to ensure that it worked.

0. Make sure your [Nvidia drivers](https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html) are set up and working on the base machine
1. Install [Docker Desktop](https://docs.docker.com/desktop/linux/install/ubuntu/)
2. Install [Docker Engine](https://docs.docker.com/engine/install/ubuntu/)
3. Login to Docker using `docker login` or by logging into the Docker Desktop app
4. Install [nvidia-docker2](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)
5. Install the [nvidia-container-runtime](https://docs.docker.com/config/containers/resource_constraints/#access-an-nvidia-gpu)
6. run `sudo ./run-setup.sh`
