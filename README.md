# ROS Melodic Docker Setup Nvidia Acceleration 

This is a quick setup for installing ROS Melodic in Docker

## Quick Installation

1. Download and install Docker Engine on your system [Install Docker](https://docs.docker.com/engine/install/).

2. Installing Nvidia Cuda Toolkit [Here](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker).
```
#Quick Installation for Ubuntu/Debian
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -

curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker

```

3. Clone this repo
```
git clone https://github.com/Jovian-Dsouza/my_melodic_image.git
cd my_melodic_image
```

4. Build the Docker Image

```
docker build -t my_melodic_image .
```

5. Run the Docker Image and open a bash shell 

```./run_my_image.bash```

6. Testing 

```
roscore > /dev/null & rosrun rviz rviz
```