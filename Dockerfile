FROM osrf/ros:melodic-desktop-full

# nvidia-container-runtime
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-utils build-essential psmisc vim-gtk neovim tmux
RUN sudo apt-get install ros-melodic-catkin python-catkin-tools
RUN sudo apt install ros-melodic-std-msgs
RUN sudo apt-get install ros-melodic-ros-tutorials

