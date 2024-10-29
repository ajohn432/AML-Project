FROM nvcr.io/nvidia/pytorch:23.03-py3

# Maintainer
LABEL maintainer="Alexander Johnston"

WORKDIR /app

RUN pip install --upgrade pip && \
    pip install numpy seaborn pandas matplotlib jupyterlab notebook ucimlrepo scipy scikit-learn fastai torchsummary

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

# install nvidia container toolkit
# distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
# curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
#    curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
#    
#    sudo apt update
#    sudo apt install -y nvidia-docker2
#    sudo systemctl restart docker


#verify docker setup
#sudo docker run --gpus all nvidia/cuda:11.0-base nvidia-smi


# sudo docker run --gpus all -p 8888:8888 -v /path/to/your/workdir:/app your_image_name


#do this shit on ubuntu as well
