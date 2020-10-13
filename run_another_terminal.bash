#connects to the running docker container in interactive and tty mode
#with UID 0
docker exec -it -u 0 \
    ros_melodic_container \
    sh -c "bash"