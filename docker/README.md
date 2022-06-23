##Setup Ubuntu Docker with Nvidia GPU support for locally hosting Jupyter Notebook files

###Ubuntu 22.04
Read the linked instructions carefully! Many steps have a verification command to ensure that it worked.

##Server libraries
0. Make sure your [Nvidia drivers](https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html) are set up and working on the base machine
1. Install [Docker Desktop](https://docs.docker.com/desktop/linux/install/ubuntu/)
    1.a. [optional] Set docker desktop to run at startup
2. Install [Docker Engine](https://docs.docker.com/engine/install/ubuntu/)
3. Login to Docker using `docker login` or by logging into the Docker Desktop app
4. Install [nvidia-docker2](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)
5. Install the [nvidia-container-runtime](https://docs.docker.com/config/containers/resource_constraints/#access-an-nvidia-gpu)

##Setup ssh
6. run `sudo apt install openssh-server -y`
7. edit `/etc/ssh/sshd_config`
    7.a. add the following: `Port [ssh_port]`, `AllowUsers [username]`, `PasswordAuthentication no`
8. run `sudo service ssh restart`

##Setup docker
9. [optional] Build docker by running `./build_docker.sh`
10. start docker by running `sudo ./run_docker.sh`

##Connect from external machine
11. Configure keys
    11.a. generate a public & private key on your external machine
    11.b. copy the public key file to `~/.ssh/` on your server
    11.c. run `touch ~/.ssh/authorized_keys` on your server
    11.c. run `cat ~/.ssh/[file].pub >> ~/.ssh/authorized_keys` on your server
12. run `ssh -N -L localhost:[webserver_port]:localhost:[webserver_port] user@public.ip -p [ssh_port]`