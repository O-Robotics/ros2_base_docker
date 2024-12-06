# ros2_base_docker

### Option 1:

Use ros2 system to run server and send coordinates:
```
rm -rf build install log
colcon build --packages-select send_rectangle_nav_server
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
