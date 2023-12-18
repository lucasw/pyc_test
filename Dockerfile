FROM ros:noetic-ros-base

RUN rm -rf /var/lib/apt/lists/* && apt-get update && apt-get upgrade -y ;\
    apt-get install -y git bash wget coreutils; \
    mkdir -p /home/test/catkin_ws/src

WORKDIR /home/test/catkin_ws

COPY src/ /home/test/catkin_ws/src

ENV HOME=/home/test 

RUN apt update ;\
    apt install --no-install-recommends -y python3-rosinstall python3-rosinstall-generator python3-wstool python3-catkin-tools;\
    apt install -y ros-noetic-xacro ;\
    apt update && rm -rf /var/lib/apt/lists/* ;\
    cd /home/test/catkin_ws/src/talker/scripts && python3 -m compileall talker.py && cp __pycache__/talker.cpython-38.pyc talker.pyc;\
    chmod +x talker.py && chmod +x talker.pyc ;

RUN cd /home/test/catkin_ws/ ;\
    /bin/bash -c "source /opt/ros/noetic/setup.bash && catkin_make" ;\
    echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc ;\
    echo "source /home/test/catkin_ws/devel/setup.bash" >> /root/.bashrc

CMD [ "/bin/bash" ]

    