FROM ros:humble-ros-base

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8
    
RUN apt-get update && apt-get install -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*
    
RUN pip3 install --no-cache-dir numpy fastapi uvicorn

# Set the working directory in the container
WORKDIR /frontend

# Copy the project files into the container (from the host to /frontend inside the container)
COPY . /frontend

# Expose port 5001 for FastAPI WebSocket server
EXPOSE 5001

RUN . /opt/ros/humble/setup.sh && colcon build


CMD ["bash", "-c", "source /opt/ros/humble/setup.sh && source install/setup.bash && ros2 run orobot_rectangle_nav orobot_nav_node"]
