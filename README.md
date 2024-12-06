# ros2_base_docker

## Pre-step
Download and put the dockerfile and the code as below

### File sturcture
```
orobot_rectangle_nav/
├── Dockerfile                  # Dockerfile
├── ros2_ws/                    # ROS 2 workspace
│   ├── src/                    # Source directory for ROS 2 packages
│   │   └── orobot_rectangle_nav/
│   │       ├── package.xml     # ROS 2 package description file
│   │       ├── setup.py
│   │       ├── setup.cfg       # Build configuration file
│   │       ├── src/            # Package source code
│   │            ├──── main.py # FastAPI server implementation
│   │            ├── ...
│   ├── install/                # Folder generated after building (installation files)
│   ├── build/                  # Folder for temporary files during the build process
│   └── log/                    # Folder for logs generated during the build process
```


## Build and run docker
```
docker build -t orobot_rectangle_nav .
```
```
docker run -it --rm orobot_rectangle_nav bash
```


## Run the programme
### Option 1:

Use ros2 system to run server and send coordinates:
```
cd ros2_ws
rm -rf build install log
colcon build --packages-select orobot_rectangle_nav
source install/setup.bash
```
```
run orobot_rectangle_nav fastapi_server
```


### Option 2:
If something wrong with ros 2 package, run code through python:
```
python3 install/orobot_rectangle_nav/lib/orobot_rectangle_nav/fastapi_server
```


