FROM ros:noetic-ros-base

RUN mkdir -p /home/test/catkin_ws/src

WORKDIR /home/test/catkin_ws

COPY src/ /home/test/catkin_ws/src

ENV HOME=/home/test

RUN cd /home/test/catkin_ws/src/talker/scripts && python3 -m compileall talker.py && ls -al __pycache__ && chmod a+x __pycache__/talker*.pyc

RUN cd /home/test/catkin_ws/ ;\
    /bin/bash -c "source /opt/ros/noetic/setup.bash && catkin_make"

CMD [ "/bin/bash" ]
